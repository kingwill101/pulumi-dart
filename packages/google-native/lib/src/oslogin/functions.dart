import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_public_key_args.dart';
import 'get_ssh_public_key_oslogin_v1alpha_args.dart';
import 'get_ssh_public_key_oslogin_v1alpha_result.dart';
import 'get_ssh_public_key_oslogin_v1beta_args.dart';
import 'get_ssh_public_key_oslogin_v1beta_result.dart';
import 'get_ssh_public_key_result.dart';

/// Retrieves an SSH public key.
/// [args] Arguments passed to this invoke. {@macro pulumi_oslogin_v1_get_ssh_public_key_args_doc}
/// [options] Invoke options controlling this call.
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

/// Retrieves an SSH public key.
/// [args] Arguments passed to this invoke. {@macro pulumi_oslogin_v1alpha_get_ssh_public_key_oslogin_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
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

/// Retrieves an SSH public key.
/// [args] Arguments passed to this invoke. {@macro pulumi_oslogin_v1beta_get_ssh_public_key_oslogin_v1beta_args_doc}
/// [options] Invoke options controlling this call.
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
