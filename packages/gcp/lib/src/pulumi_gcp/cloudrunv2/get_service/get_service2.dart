import 'package:pulumi/pulumi.dart';
import 'get_service_args2.dart';
import 'get_service_result2.dart';

/// Get information about a Google Cloud Run v2 Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
Future<GetServiceResult2> getService2(
  GetServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult2.fromMap(result);
}
