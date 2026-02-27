import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_routes_args.dart';
import 'get_route_table_routes_result.dart';

/// Provides informations for routes of a specific transit gateway, such as state, type, cidr
Future<GetRouteTableRoutesResult> getRouteTableRoutes(
  GetRouteTableRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableRoutes:getRouteTableRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableRoutesResult.fromMap(result);
}
