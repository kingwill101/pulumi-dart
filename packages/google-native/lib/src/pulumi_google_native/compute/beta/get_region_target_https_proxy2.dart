import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_target_https_proxy_args2.dart';
import 'get_region_target_https_proxy_result2.dart';

/// Returns the specified TargetHttpsProxy resource in the specified region.
Future<GetRegionTargetHttpsProxyResult2> getRegionTargetHttpsProxy2(
  GetRegionTargetHttpsProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyResult2.fromMap(result);
}
