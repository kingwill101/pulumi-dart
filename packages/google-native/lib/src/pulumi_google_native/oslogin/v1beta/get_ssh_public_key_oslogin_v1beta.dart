import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_public_key_oslogin_v1beta_args.dart';
import 'get_ssh_public_key_oslogin_v1beta_result.dart';

/// Retrieves an SSH public key.
Future<GetSshPublicKeyOsloginV1betaResult> getSshPublicKeyOsloginV1beta(
  GetSshPublicKeyOsloginV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:oslogin/v1beta:getSshPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyOsloginV1betaResult.fromMap(result);
}
