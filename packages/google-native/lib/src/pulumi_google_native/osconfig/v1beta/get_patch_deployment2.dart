import 'package:pulumi/pulumi.dart' hide Config;
import 'get_patch_deployment_args2.dart';
import 'get_patch_deployment_result2.dart';

/// Get an OS Config patch deployment.
Future<GetPatchDeploymentResult2> getPatchDeployment2(
  GetPatchDeploymentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getPatchDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPatchDeploymentResult2.fromMap(result);
}
