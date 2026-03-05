import 'package:automation_inline_local_hybrid_infra/main.dart' as infra;
import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  await Deployment.runOrThrow(() => infra.WebsiteDeployStack());
}
