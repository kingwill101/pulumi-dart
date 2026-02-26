import 'package:pulumi/pulumi.dart';
import 'get_patch_deployment_args.dart';
import 'get_patch_deployment_result.dart';

/// Get an OS Config patch deployment.
Future<GetPatchDeploymentResult> getPatchDeployment(
  GetPatchDeploymentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1:getPatchDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPatchDeploymentResult.fromMap(result);
}
