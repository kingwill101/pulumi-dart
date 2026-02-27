import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grpc_route_networkservices_v1beta1_args.dart';
import 'get_grpc_route_networkservices_v1beta1_result.dart';

/// Gets details of a single GrpcRoute.
Future<GetGrpcRouteNetworkservicesV1beta1Result>
    getGrpcRouteNetworkservicesV1beta1(
  GetGrpcRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGrpcRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrpcRouteNetworkservicesV1beta1Result.fromMap(result);
}
