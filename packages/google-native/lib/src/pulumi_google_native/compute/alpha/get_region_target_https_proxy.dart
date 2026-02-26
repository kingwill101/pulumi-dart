import 'package:pulumi/pulumi.dart';
import 'get_region_target_https_proxy_args.dart';
import 'get_region_target_https_proxy_result.dart';

/// Returns the specified TargetHttpsProxy resource in the specified region.
Future<GetRegionTargetHttpsProxyResult> getRegionTargetHttpsProxy(
  GetRegionTargetHttpsProxyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyResult.fromMap(result);
}
