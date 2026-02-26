import 'package:pulumi/pulumi.dart';
import 'get_region_target_http_proxy_args2.dart';
import 'get_region_target_http_proxy_result2.dart';

/// Returns the specified TargetHttpProxy resource in the specified region.
Future<GetRegionTargetHttpProxyResult2> getRegionTargetHttpProxy2(
  GetRegionTargetHttpProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetHttpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyResult2.fromMap(result);
}
