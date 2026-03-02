import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as iam;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  ExampleStack() {
    final api = aws.apigatewayv2.Api(
      'api',
      args: aws.apigatewayv2.ApiArgs(protocolType: 'HTTP'.input()),
    );

    final stage = aws.apigatewayv2.Stage(
      'stage',
      args: aws.apigatewayv2.StageArgs(
        apiId: api.id,
        name: 'dev'.input(),
        autoDeploy: true.input(),
      ),
    );

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
        ].input(),
      ),
    );

    final requestParameters = bus.name.apply<Map<String, String>>(
      (name) => {
        'EventBusName': name,
        'Source': 'my-event-source',
        'DetailType': 'my-detail-type',
        'Detail': r'$request.body',
      },
    );

    final integration = aws.apigatewayv2.Integration(
      'integration',
      args: aws.apigatewayv2.IntegrationArgs(
        apiId: api.id,
        integrationType: 'AWS_PROXY'.input(),
        integrationSubtype: 'EventBridge-PutEvents'.input(),
        credentialsArn: apiGatewayRole.arn,
        requestParameters: requestParameters,
      ),
    );

    final routeTarget = integration.id.apply<String>(
      (id) => 'integrations/$id',
    );

    aws.apigatewayv2.Route(
      'route',
      args: aws.apigatewayv2.RouteArgs(
        apiId: api.id,
        routeKey: 'POST /uploads'.input(),
        target: routeTarget,
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
        policyArn: iam.ManagedPolicy.cloudWatchLogsFullAccess.value.input(),
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

    url = pulumi.Output.all<dynamic>([api.apiEndpoint, stage.name])
        .apply<String>(
          (values) => '${values[0] as String}/${values[1] as String}',
        );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
