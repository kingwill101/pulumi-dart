import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_target_http_proxy_args.dart';
import 'get_region_target_http_proxy_result.dart';

/// Returns the specified TargetHttpProxy resource in the specified region.
Future<GetRegionTargetHttpProxyResult> getRegionTargetHttpProxy(
  GetRegionTargetHttpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyResult.fromMap(result);
}
