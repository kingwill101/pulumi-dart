import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_https_proxy_args2.dart';
import 'get_target_https_proxy_result2.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyResult2> getTargetHttpsProxy2(
  GetTargetHttpsProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult2.fromMap(result);
}
