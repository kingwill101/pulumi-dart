import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Get information about a Google Cloud Run Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
