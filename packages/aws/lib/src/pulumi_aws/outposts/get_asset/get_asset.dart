import 'package:pulumi/pulumi.dart';
import 'get_asset_args.dart';
import 'get_asset_result.dart';

/// Information about a specific hardware asset in an Outpost.
Future<GetAssetResult> getAsset(
  GetAssetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAsset:getAsset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAssetResult.fromMap(result);
}
