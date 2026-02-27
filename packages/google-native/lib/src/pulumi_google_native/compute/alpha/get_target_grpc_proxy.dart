import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_grpc_proxy_args.dart';
import 'get_target_grpc_proxy_result.dart';

/// Returns the specified TargetGrpcProxy resource in the given scope.
Future<GetTargetGrpcProxyResult> getTargetGrpcProxy(
  GetTargetGrpcProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyResult.fromMap(result);
}
