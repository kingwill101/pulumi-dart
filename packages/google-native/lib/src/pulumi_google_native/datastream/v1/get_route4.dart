import 'package:pulumi/pulumi.dart' hide Config;
import 'get_route_args4.dart';
import 'get_route_result4.dart';

/// Use this method to get details about a route.
Future<GetRouteResult4> getRoute4(
  GetRouteArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult4.fromMap(result);
}
