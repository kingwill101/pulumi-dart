import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_args.dart';
import 'get_addon_result.dart';

/// Retrieve information about an EKS add-on.
Future<GetAddonResult> getAddon(
  GetAddonArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddon:getAddon',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonResult.fromMap(result);
}
