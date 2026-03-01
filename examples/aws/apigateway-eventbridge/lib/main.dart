import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  ExampleStack() {
    final api = aws.apigateway.RestApi('api');

    final bus = aws.cloudwatch.EventBus('bus');

    final rule = aws.cloudwatch.EventRule(
      'rule',
      args: aws.cloudwatch.EventRuleArgs(
        eventBusName: bus.name,
        eventPattern: jsonEncode({
          'source': ['my-event-source'],
        }).input(),
      ),
    );

    final validator = aws.apigateway.RequestValidator(
      'validator',
      args: aws.apigateway.RequestValidatorArgs(
        restApi: api.id,
        validateRequestBody: true.input(),
      ),
    );

    final model = aws.apigateway.Model(
      'model',
      args: aws.apigateway.ModelArgs(
        restApi: api.id,
        contentType: 'application/json'.input(),
        name: 'person'.input(),
        schema: jsonEncode({
          r'$schema': 'http://json-schema.org/draft-07/schema#',
          'title': 'person',
          'type': 'object',
          'properties': {
            'name': {
              'type': 'string',
              'description': 'The name of the person.',
            },
          },
          'required': ['name'],
        }).input(),
      ),
    );

    final requestModels = model.name.apply<Map<String, String>>(
      (name) => {'application/json': name},
    );

    final resource = aws.apigateway.ResourceType(
      'resource',
      args: aws.apigateway.ResourceArgs(
        restApi: api.id,
        pathPart: 'uploads'.input(),
        parentId: api.rootResourceId,
      ),
    );

    final method = aws.apigateway.Method(
      'method',
      args: aws.apigateway.MethodArgs(
        restApi: api.id,
        httpMethod: 'POST'.input(),
        resourceId: resource.id,
        requestValidatorId: validator.id,
        requestModels: requestModels,
        authorization: 'NONE'.input(),
      ),
    );

    final apiGatewayRole = aws.iam.Role(
      'api-gateway-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'apigateway.amazonaws.com'},
            },
          ],
        }).input(),
        managedPolicyArns: [
          'arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess',
        ],
      ),
    );

    final currentRegion = pulumi
        .output(
          aws.index
              .getRegion(aws.index.GetRegionArgs())
              .then((result) => result.name),
        )
        .apply<String>((value) => value as String);

    final uri = currentRegion.apply<String>(
      (name) => 'arn:aws:apigateway:$name:events:action/PutEvents',
    );

    final eventBridgeTemplate = bus.name.apply<String>(
      (eventBusName) =>
          '''{"Entries":[{"Source":"my-event-source","EventBusName":"$eventBusName","DetailType":"my-detail-type","Detail":"\$util.escapeJavaScript(\$input.body)"}]}''',
    );

    final requestTemplates = eventBridgeTemplate.apply<Map<String, String>>(
      (template) => {'application/json': template},
    );

    final integration = aws.apigateway.Integration(
      'integration',
      args: aws.apigateway.IntegrationArgs(
        restApi: api.id,
        resourceId: resource.id,
        httpMethod: method.httpMethod,
        type: 'AWS'.input(),
        integrationHttpMethod: 'POST'.input(),
        uri: uri,
        credentials: apiGatewayRole.arn,
        passthroughBehavior: 'WHEN_NO_TEMPLATES'.input(),
        requestParameters: {
          'integration.request.header.X-Amz-Target': "'AWSEvents.PutEvents'",
          'integration.request.header.Content-Type':
              "'application/x-amz-json-1.1'",
        }.input(),
        requestTemplates: requestTemplates,
      ),
    );

    aws.apigateway.MethodResponse(
      'method-response',
      args: aws.apigateway.MethodResponseArgs(
        restApi: api.id,
        resourceId: resource.id,
        httpMethod: method.httpMethod,
        statusCode: '201'.input(),
      ),
    );

    final integrationResponse = aws.apigateway.IntegrationResponse(
      'integration-response',
      args: aws.apigateway.IntegrationResponseArgs(
        restApi: api.id,
        resourceId: resource.id,
        httpMethod: method.httpMethod,
        selectionPattern: r'2\d{2}'.input(),
        statusCode: '201'.input(),
        responseTemplates: {
          'application/json': jsonEncode({'accepted': true}),
        }.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [integration]),
    );

    final trigger = pulumi.Output
        .all<dynamic>([
          resource.id,
          method.id,
          integration.id,
          integrationResponse.id,
          validator.id,
        ])
        .apply<String>((values) => jsonEncode(values));

    final deploymentTriggers = trigger.apply<Map<String, String>>(
      (value) => {'deployment': value},
    );

    final deployment = aws.apigateway.DeploymentType(
      'deployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: api.id,
        triggers: deploymentTriggers,
      ),
    );

    final stage = aws.apigateway.Stage(
      'stage',
      args: aws.apigateway.StageArgs(
        restApi: api.id,
        deployment: deployment.id,
        stageName: 'dev'.input(),
      ),
    );

    final lambdaRole = aws.iam.Role(
      'lambdaRole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Effect': 'Allow',
              'Sid': '',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambdaRoleAttachment',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: aws.iam.ManagedPolicy.cloudWatchLogsFullAccess.value.input(),
      ),
    );

    final lambda = aws.lambda.FunctionType(
      'lambda',
      args: aws.lambda.FunctionArgs(
        code: pulumi.FileArchive('./app').input(),
        runtime: 'nodejs12.x'.input(),
        role: lambdaRole.arn,
        handler: 'index.handler'.input(),
      ),
    );

    aws.cloudwatch.EventTarget(
      'lambda-target',
      args: aws.cloudwatch.EventTargetArgs(
        arn: lambda.arn,
        rule: rule.name,
        eventBusName: bus.name,
      ),
    );

    aws.lambda.Permission(
      'lambda-permission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        principal: 'events.amazonaws.com'.input(),
        function: lambda.arn,
        sourceArn: rule.arn,
      ),
    );

    url = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
