import 'package:aws_dart_k8s_mern_voting_app/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.K8sMernVotingAppStack());
}
