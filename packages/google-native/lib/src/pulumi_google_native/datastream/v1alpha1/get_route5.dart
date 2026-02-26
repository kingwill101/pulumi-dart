import 'package:pulumi/pulumi.dart';
import 'get_route_args5.dart';
import 'get_route_result5.dart';

/// Use this method to get details about a route.
Future<GetRouteResult5> getRoute5(
  GetRouteArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1alpha1:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult5.fromMap(result);
}
