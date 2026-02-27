import 'package:pulumi/pulumi.dart' hide Config;
import 'get_target_grpc_proxy_args3.dart';
import 'get_target_grpc_proxy_result3.dart';

/// Returns the specified TargetGrpcProxy resource in the given scope.
Future<GetTargetGrpcProxyResult3> getTargetGrpcProxy3(
  GetTargetGrpcProxyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetGrpcProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyResult3.fromMap(result);
}
