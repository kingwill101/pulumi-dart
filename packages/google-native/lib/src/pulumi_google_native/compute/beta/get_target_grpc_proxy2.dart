import 'package:pulumi/pulumi.dart';
import 'get_target_grpc_proxy_args2.dart';
import 'get_target_grpc_proxy_result2.dart';

/// Returns the specified TargetGrpcProxy resource in the given scope.
Future<GetTargetGrpcProxyResult2> getTargetGrpcProxy2(
  GetTargetGrpcProxyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetGrpcProxy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyResult2.fromMap(result);
}
