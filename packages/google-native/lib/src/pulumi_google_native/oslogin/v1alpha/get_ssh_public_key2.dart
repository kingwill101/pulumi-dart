import 'package:pulumi/pulumi.dart';
import 'get_ssh_public_key_args2.dart';
import 'get_ssh_public_key_result2.dart';

/// Retrieves an SSH public key.
Future<GetSshPublicKeyResult2> getSshPublicKey2(
  GetSshPublicKeyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:oslogin/v1alpha:getSshPublicKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyResult2.fromMap(result);
}
