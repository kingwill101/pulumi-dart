import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_args.dart';
import 'get_cloud_exadata_infrastructure_result.dart';

/// Get information about an ExadataInfrastructure.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures).
Future<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructure(
  GetCloudExadataInfrastructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructureResult.fromMap(result);
}
