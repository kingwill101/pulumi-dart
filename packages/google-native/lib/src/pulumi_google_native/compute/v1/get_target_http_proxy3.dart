import 'package:pulumi/pulumi.dart';
import 'get_target_http_proxy_args3.dart';
import 'get_target_http_proxy_result3.dart';

/// Returns the specified TargetHttpProxy resource.
Future<GetTargetHttpProxyResult3> getTargetHttpProxy3(
  GetTargetHttpProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyResult3.fromMap(result);
}
