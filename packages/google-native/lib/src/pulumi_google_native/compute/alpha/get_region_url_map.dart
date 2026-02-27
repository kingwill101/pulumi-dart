import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_url_map_args.dart';
import 'get_region_url_map_result.dart';

/// Returns the specified UrlMap resource.
Future<GetRegionUrlMapResult> getRegionUrlMap(
  GetRegionUrlMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapResult.fromMap(result);
}
