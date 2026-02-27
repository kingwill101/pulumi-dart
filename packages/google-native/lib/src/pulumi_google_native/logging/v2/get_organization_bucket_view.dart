import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_bucket_view_args.dart';
import 'get_organization_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetOrganizationBucketViewResult> getOrganizationBucketView(
  GetOrganizationBucketViewArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucketView',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketViewResult.fromMap(result);
}
