import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_public_key_args.dart';
import 'get_ssh_public_key_result.dart';

/// Retrieves an SSH public key.
Future<GetSshPublicKeyResult> getSshPublicKey(
  GetSshPublicKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:oslogin/v1:getSshPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyResult.fromMap(result);
}
