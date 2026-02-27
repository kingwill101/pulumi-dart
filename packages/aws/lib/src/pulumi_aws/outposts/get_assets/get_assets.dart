import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_assets_args.dart';
import 'get_assets_result.dart';

/// Information about hardware assets in an Outpost.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With Host ID Filter
///
///
///
/// ### With Status ID Filter
Future<GetAssetsResult> getAssets(
  GetAssetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAssets:getAssets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetsResult.fromMap(result);
}
