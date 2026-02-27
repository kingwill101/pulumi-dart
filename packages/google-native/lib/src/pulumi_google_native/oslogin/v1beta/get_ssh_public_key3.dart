import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ssh_public_key_args3.dart';
import 'get_ssh_public_key_result3.dart';

/// Retrieves an SSH public key.
Future<GetSshPublicKeyResult3> getSshPublicKey3(
  GetSshPublicKeyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:oslogin/v1beta:getSshPublicKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyResult3.fromMap(result);
}
