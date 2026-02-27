import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_args.dart';
import 'get_router_result.dart';

/// Returns the specified Router resource.
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}
