import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_associations_args.dart';
import 'get_route_table_associations_result.dart';

/// Provides information for multiple EC2 Transit Gateway Route Table Associations, such as their identifiers.
///
/// ## Example Usage
///
/// ### By Transit Gateway Identifier
Future<GetRouteTableAssociationsResult> getRouteTableAssociations(
  GetRouteTableAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getRouteTableAssociations:getRouteTableAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableAssociationsResult.fromMap(result);
}
