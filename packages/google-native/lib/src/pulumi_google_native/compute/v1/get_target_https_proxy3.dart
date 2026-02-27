import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_https_proxy_args3.dart';
import 'get_target_https_proxy_result3.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyResult3> getTargetHttpsProxy3(
  GetTargetHttpsProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpsProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult3.fromMap(result);
}
