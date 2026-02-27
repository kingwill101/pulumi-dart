import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_https_proxy_args.dart';
import 'get_target_https_proxy_result.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyResult> getTargetHttpsProxy(
  GetTargetHttpsProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult.fromMap(result);
}
