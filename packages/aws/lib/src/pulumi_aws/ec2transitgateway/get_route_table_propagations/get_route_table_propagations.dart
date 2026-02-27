import 'package:pulumi/pulumi.dart';
import 'get_route_table_propagations_args.dart';
import 'get_route_table_propagations_result.dart';

/// Provides information for multiple EC2 Transit Gateway Route Table Propagations, such as their identifiers.
///
/// ## Example Usage
///
/// ### By Transit Gateway Identifier
Future<GetRouteTablePropagationsResult> getRouteTablePropagations(
  GetRouteTablePropagationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTablePropagations:getRouteTablePropagations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTablePropagationsResult.fromMap(result);
}
