import 'package:pulumi/pulumi.dart';
import 'get_grpc_route_args.dart';
import 'get_grpc_route_result.dart';

/// Gets details of a single GrpcRoute.
Future<GetGrpcRouteResult> getGrpcRoute(
  GetGrpcRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGrpcRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGrpcRouteResult.fromMap(result);
}
