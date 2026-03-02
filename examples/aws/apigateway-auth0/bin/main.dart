import 'package:aws_dart_apigateway_auth0/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ApiGatewayAuth0Stack());
}
