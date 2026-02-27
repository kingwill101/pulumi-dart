import 'package:pulumi/pulumi.dart' hide Config;
import 'get_route_args3.dart';
import 'get_route_result3.dart';

/// Returns the specified Route resource.
Future<GetRouteResult3> getRoute3(
  GetRouteArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult3.fromMap(result);
}
