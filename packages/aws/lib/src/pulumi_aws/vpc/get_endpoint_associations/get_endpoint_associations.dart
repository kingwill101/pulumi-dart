import 'package:pulumi/pulumi.dart';
import 'get_endpoint_associations_args.dart';
import 'get_endpoint_associations_result.dart';

/// Data source for managing an AWS EC2 (Elastic Compute Cloud) Vpc Endpoint Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEndpointAssociationsResult> getEndpointAssociations(
  GetEndpointAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getEndpointAssociations:getEndpointAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointAssociationsResult.fromMap(result);
}
