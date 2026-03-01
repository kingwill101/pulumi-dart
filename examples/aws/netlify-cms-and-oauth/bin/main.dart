import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_netlify_cms_and_oauth/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => NetlifyCmsAndOauthStack());
}
