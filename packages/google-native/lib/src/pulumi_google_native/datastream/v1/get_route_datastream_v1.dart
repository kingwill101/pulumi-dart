import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_datastream_v1_args.dart';
import 'get_route_datastream_v1_result.dart';

/// Use this method to get details about a route.
Future<GetRouteDatastreamV1Result> getRouteDatastreamV1(
  GetRouteDatastreamV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteDatastreamV1Result.fromMap(result);
}
