import 'package:pulumi/pulumi.dart';
import 'get_region_target_http_proxy_args3.dart';
import 'get_region_target_http_proxy_result3.dart';

/// Returns the specified TargetHttpProxy resource in the specified region.
Future<GetRegionTargetHttpProxyResult3> getRegionTargetHttpProxy3(
  GetRegionTargetHttpProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyResult3.fromMap(result);
}
