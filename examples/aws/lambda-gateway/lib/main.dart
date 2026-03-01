import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> invocationUrl;

  ExampleStack() {
    final accountId = pulumi
        .output(
          aws.index
              .getCallerIdentity(aws.index.GetCallerIdentityArgs())
              .then((result) => result.accountId),
        )
        .apply<String>((value) => value as String);

    final regionName = pulumi
        .output(
          aws.index
              .getRegion(aws.index.GetRegionArgs())
              .then((result) => result.name),
        )
        .apply<String>((value) => value as String);

    final role = aws.iam.Role(
      'task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: '''{
  "Version": "2012-10-17",
  "Statement": [{
    "Sid": "",
    "Effect": "Allow",
    "Principal": {
      "Service": "lambda.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
  }]
}'''.input(),
      ),
    );

    final logPolicy = aws.iam.RolePolicy(
      'lambda-log-policy',
      args: aws.iam.RolePolicyArgs(
        role: role.name,
        policy: '''{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ],
    "Resource": "arn:aws:logs:*:*:*"
  }]
}'''.input(),
      ),
    );

    final function = aws.lambda.FunctionType(
      'basicLambda',
      args: aws.lambda.FunctionArgs(
        handler: 'handler'.input(),
        role: role.arn,
        runtime: 'go1.x'.input(),
        code: pulumi.FileArchive('./handler/handler.zip').input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [logPolicy]),
    );

    final gateway = aws.apigateway.RestApi(
      'UpperCaseGateway',
      args: aws.apigateway.RestApiArgs(
        name: 'UpperCaseGateway'.input(),
        description: 'An API Gateway for the UpperCase function'.input(),
        policy: '''{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    },
    {
      "Action": "execute-api:Invoke",
      "Resource": "*",
      "Principal": "*",
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}'''.input(),
      ),
    );

    final apiResource = aws.apigateway.ResourceType(
      'UpperAPI',
      args: aws.apigateway.ResourceArgs(
        restApi: gateway.id,
        pathPart: '{proxy+}'.input(),
        parentId: gateway.rootResourceId,
      ),
    );

    aws.apigateway.Method(
      'AnyMethod',
      args: aws.apigateway.MethodArgs(
        httpMethod: 'ANY'.input(),
        authorization: 'NONE'.input(),
        restApi: gateway.id,
        resourceId: apiResource.id,
      ),
    );

    aws.apigateway.Integration(
      'LambdaIntegration',
      args: aws.apigateway.IntegrationArgs(
        httpMethod: 'ANY'.input(),
        integrationHttpMethod: 'POST'.input(),
        resourceId: apiResource.id,
        restApi: gateway.id,
        type: 'AWS_PROXY'.input(),
        uri: function.invokeArn,
      ),
    );

    final sourceArn = pulumi.Output
        .all<dynamic>([regionName, accountId, gateway.id])
        .apply<String>(
          (values) =>
              'arn:aws:execute-api:${values[0] as String}:${values[1] as String}:${values[2] as String}/*/*/*',
        );

    final permission = aws.lambda.Permission(
      'APIPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: function.name,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: sourceArn,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [apiResource]),
    );

    final deployment = aws.apigateway.DeploymentType(
      'APIDeployment',
      args: aws.apigateway.DeploymentArgs(
        description: 'UpperCase API deployment'.input(),
        restApi: gateway.id,
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [apiResource, function, permission],
      ),
    );

    final stage = aws.apigateway.Stage(
      'prod',
      args: aws.apigateway.StageArgs(
        stageName: 'prod'.input(),
        restApi: gateway.id,
        deployment: deployment.id,
      ),
    );

    invocationUrl = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('invocation URL', invocationUrl)];
  }
}
