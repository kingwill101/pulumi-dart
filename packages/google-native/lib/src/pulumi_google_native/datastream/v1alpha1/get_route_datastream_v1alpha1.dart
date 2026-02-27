import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_datastream_v1alpha1_args.dart';
import 'get_route_datastream_v1alpha1_result.dart';

/// Use this method to get details about a route.
Future<GetRouteDatastreamV1alpha1Result> getRouteDatastreamV1alpha1(
  GetRouteDatastreamV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteDatastreamV1alpha1Result.fromMap(result);
}
