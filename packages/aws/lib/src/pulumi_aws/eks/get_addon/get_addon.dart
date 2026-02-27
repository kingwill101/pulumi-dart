import 'package:pulumi/pulumi.dart';
import 'get_addon_args.dart';
import 'get_addon_result.dart';

/// Retrieve information about an EKS add-on.
Future<GetAddonResult> getAddon(
  GetAddonArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddon:getAddon',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddonResult.fromMap(result);
}
