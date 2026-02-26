import 'package:pulumi/pulumi.dart';
import 'get_region_url_map_args3.dart';
import 'get_region_url_map_result3.dart';

/// Returns the specified UrlMap resource.
Future<GetRegionUrlMapResult3> getRegionUrlMap3(
  GetRegionUrlMapArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionUrlMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapResult3.fromMap(result);
}
