import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_args.dart';
import 'get_cloud_exadata_infrastructures_result.dart';

/// List all ExadataInfrastructures.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures).
Future<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructures(
  GetCloudExadataInfrastructuresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructuresResult.fromMap(result);
}
