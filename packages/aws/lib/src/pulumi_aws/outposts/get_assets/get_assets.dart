import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAssets:getAssets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAssetsResult.fromMap(result);
}
