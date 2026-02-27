import 'package:pulumi/pulumi.dart' hide Config;
import 'get_asset_args.dart';
import 'get_asset_result.dart';

/// Retrieves an asset resource.
Future<GetAssetResult> getAsset(
  GetAssetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAsset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAssetResult.fromMap(result);
}
