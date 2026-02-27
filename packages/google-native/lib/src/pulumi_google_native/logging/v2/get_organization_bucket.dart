import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_bucket_args.dart';
import 'get_organization_bucket_result.dart';

/// Gets a log bucket.
Future<GetOrganizationBucketResult> getOrganizationBucket(
  GetOrganizationBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketResult.fromMap(result);
}
