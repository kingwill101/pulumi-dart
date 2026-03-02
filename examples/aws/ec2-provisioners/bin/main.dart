import 'package:aws_dart_ec2_provisioners/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.Ec2ProvisionersStack());
}
