import 'package:pulumi/pulumi.dart';
import 'get_region_url_map_args2.dart';
import 'get_region_url_map_result2.dart';

/// Returns the specified UrlMap resource.
Future<GetRegionUrlMapResult2> getRegionUrlMap2(
  GetRegionUrlMapArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapResult2.fromMap(result);
}
