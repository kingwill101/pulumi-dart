import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}
