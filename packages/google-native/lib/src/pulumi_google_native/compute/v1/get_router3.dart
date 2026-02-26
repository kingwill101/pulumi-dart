import 'package:pulumi/pulumi.dart';
import 'get_router_args3.dart';
import 'get_router_result3.dart';

/// Returns the specified Router resource.
Future<GetRouterResult3> getRouter3(
  GetRouterArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRouter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterResult3.fromMap(result);
}
