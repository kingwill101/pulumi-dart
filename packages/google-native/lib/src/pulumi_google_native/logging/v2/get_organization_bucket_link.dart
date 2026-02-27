import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_bucket_link_args.dart';
import 'get_organization_bucket_link_result.dart';

/// Gets a link.
Future<GetOrganizationBucketLinkResult> getOrganizationBucketLink(
  GetOrganizationBucketLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationBucketLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBucketLinkResult.fromMap(result);
}
