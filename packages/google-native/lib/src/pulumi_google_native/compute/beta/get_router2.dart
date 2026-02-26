import 'package:pulumi/pulumi.dart';
import 'get_router_args2.dart';
import 'get_router_result2.dart';

/// Returns the specified Router resource.
Future<GetRouterResult2> getRouter2(
  GetRouterArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRouter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterResult2.fromMap(result);
}
