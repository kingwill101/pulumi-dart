import 'package:pulumi/pulumi.dart';
import 'get_route_table_routes_args.dart';
import 'get_route_table_routes_result.dart';

/// Provides informations for routes of a specific transit gateway, such as state, type, cidr
Future<GetRouteTableRoutesResult> getRouteTableRoutes(
  GetRouteTableRoutesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableRoutes:getRouteTableRoutes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTableRoutesResult.fromMap(result);
}
