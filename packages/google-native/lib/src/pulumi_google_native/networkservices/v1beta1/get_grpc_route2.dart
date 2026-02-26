import 'package:pulumi/pulumi.dart';
import 'get_grpc_route_args2.dart';
import 'get_grpc_route_result2.dart';

/// Gets details of a single GrpcRoute.
Future<GetGrpcRouteResult2> getGrpcRoute2(
  GetGrpcRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGrpcRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGrpcRouteResult2.fromMap(result);
}
