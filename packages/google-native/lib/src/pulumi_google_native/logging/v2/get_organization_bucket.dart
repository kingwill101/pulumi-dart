import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_bucket_args.dart';
import 'get_organization_bucket_result.dart';

/// Gets a log bucket.
Future<GetOrganizationBucketResult> getOrganizationBucket(
  GetOrganizationBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketResult.fromMap(result);
}
