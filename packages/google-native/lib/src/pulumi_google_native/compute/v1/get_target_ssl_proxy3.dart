import 'package:pulumi/pulumi.dart';
import 'get_target_ssl_proxy_args3.dart';
import 'get_target_ssl_proxy_result3.dart';

/// Returns the specified TargetSslProxy resource.
Future<GetTargetSslProxyResult3> getTargetSslProxy3(
  GetTargetSslProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetSslProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyResult3.fromMap(result);
}
