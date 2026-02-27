import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_version_args.dart';
import 'get_addon_version_result.dart';

/// Retrieve information about a specific EKS add-on version compatible with an EKS cluster version.
Future<GetAddonVersionResult> getAddonVersion(
  GetAddonVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddonVersion:getAddonVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonVersionResult.fromMap(result);
}
