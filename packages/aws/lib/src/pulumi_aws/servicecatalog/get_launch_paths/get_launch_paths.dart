import 'package:pulumi/pulumi.dart';
import 'get_launch_paths_args.dart';
import 'get_launch_paths_result.dart';

/// Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLaunchPathsResult> getLaunchPaths(
  GetLaunchPathsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getLaunchPaths:getLaunchPaths',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLaunchPathsResult.fromMap(result);
}
