import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_public_key_oslogin_v1alpha_args.dart';
import 'get_ssh_public_key_oslogin_v1alpha_result.dart';

/// Retrieves an SSH public key.
Future<GetSshPublicKeyOsloginV1alphaResult> getSshPublicKeyOsloginV1alpha(
  GetSshPublicKeyOsloginV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:oslogin/v1alpha:getSshPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshPublicKeyOsloginV1alphaResult.fromMap(result);
}
