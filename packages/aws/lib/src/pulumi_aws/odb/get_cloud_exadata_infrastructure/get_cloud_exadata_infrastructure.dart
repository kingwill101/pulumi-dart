import 'package:pulumi/pulumi.dart';
import 'get_cloud_exadata_infrastructure_args.dart';
import 'get_cloud_exadata_infrastructure_result.dart';

/// Data source for exadata infrastructure resource in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudExadataInfrastructureResult> getCloudExadataInfrastructure(
  GetCloudExadataInfrastructureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructure:getCloudExadataInfrastructure',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructureResult.fromMap(result);
}
