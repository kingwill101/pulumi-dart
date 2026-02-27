import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_target_https_proxy_args3.dart';
import 'get_region_target_https_proxy_result3.dart';

/// Returns the specified TargetHttpsProxy resource in the specified region.
Future<GetRegionTargetHttpsProxyResult3> getRegionTargetHttpsProxy3(
  GetRegionTargetHttpsProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyResult3.fromMap(result);
}
