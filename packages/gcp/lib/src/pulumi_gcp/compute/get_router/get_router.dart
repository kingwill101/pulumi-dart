import 'package:pulumi/pulumi.dart';
import 'get_router_args.dart';
import 'get_router_result.dart';

/// Get a router within GCE from its name and VPC.
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouter:getRouter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}
