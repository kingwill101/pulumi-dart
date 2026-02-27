import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_bucket_link_args.dart';
import 'get_organization_bucket_link_result.dart';

/// Gets a link.
Future<GetOrganizationBucketLinkResult> getOrganizationBucketLink(
  GetOrganizationBucketLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucketLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketLinkResult.fromMap(result);
}
