import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  final code = await DeploymentImpl.run(() {});
}
