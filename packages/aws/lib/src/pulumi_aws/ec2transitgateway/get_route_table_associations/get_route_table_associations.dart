import 'package:pulumi/pulumi.dart';
import 'get_route_table_associations_args.dart';
import 'get_route_table_associations_result.dart';

/// Provides information for multiple EC2 Transit Gateway Route Table Associations, such as their identifiers.
///
/// ## Example Usage
///
/// ### By Transit Gateway Identifier
Future<GetRouteTableAssociationsResult> getRouteTableAssociations(
  GetRouteTableAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableAssociations:getRouteTableAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTableAssociationsResult.fromMap(result);
}
