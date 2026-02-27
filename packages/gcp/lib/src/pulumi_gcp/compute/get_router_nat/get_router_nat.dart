import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_nat_args.dart';
import 'get_router_nat_result.dart';

/// To get more information about RouterNat, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/router/docs/)
Future<GetRouterNatResult> getRouterNat(
  GetRouterNatArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouterNat:getRouterNat',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterNatResult.fromMap(result);
}
