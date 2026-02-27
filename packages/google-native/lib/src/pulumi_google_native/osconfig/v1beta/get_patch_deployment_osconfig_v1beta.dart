import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_deployment_osconfig_v1beta_args.dart';
import 'get_patch_deployment_osconfig_v1beta_result.dart';

/// Get an OS Config patch deployment.
Future<GetPatchDeploymentOsconfigV1betaResult> getPatchDeploymentOsconfigV1beta(
  GetPatchDeploymentOsconfigV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getPatchDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchDeploymentOsconfigV1betaResult.fromMap(result);
}
