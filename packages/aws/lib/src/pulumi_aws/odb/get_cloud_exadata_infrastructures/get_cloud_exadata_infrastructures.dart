import 'package:pulumi/pulumi.dart';
import 'get_cloud_exadata_infrastructures_args.dart';
import 'get_cloud_exadata_infrastructures_result.dart';

/// Data source for exadata infrastructures in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCloudExadataInfrastructuresResult> getCloudExadataInfrastructures(
  GetCloudExadataInfrastructuresArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getCloudExadataInfrastructures:getCloudExadataInfrastructures',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudExadataInfrastructuresResult.fromMap(result);
}
