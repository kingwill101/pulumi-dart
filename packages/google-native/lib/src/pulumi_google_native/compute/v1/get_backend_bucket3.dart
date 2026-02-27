import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backend_bucket_args3.dart';
import 'get_backend_bucket_result3.dart';

/// Returns the specified BackendBucket resource.
Future<GetBackendBucketResult3> getBackendBucket3(
  GetBackendBucketArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult3.fromMap(result);
}
