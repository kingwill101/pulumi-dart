import 'package:apigateway_lambda_serverless/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ApiGatewayLambdaServerlessStack());
}
