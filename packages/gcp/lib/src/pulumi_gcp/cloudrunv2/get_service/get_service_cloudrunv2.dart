import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_cloudrunv2_args.dart';
import 'get_service_cloudrunv2_result.dart';

/// Get information about a Google Cloud Run v2 Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
Future<GetServiceCloudrunv2Result> getServiceCloudrunv2(
  GetServiceCloudrunv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceCloudrunv2Result.fromMap(result);
}
