import 'package:pulumi/pulumi.dart';
import 'get_required_tags_args.dart';
import 'get_required_tags_result.dart';

/// Lists the required tags for supported resource types in an AWS account. Required tags are defined through AWS Organizations [tag policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html).
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRequiredTagsResult> getRequiredTags(
  GetRequiredTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourcegroupstaggingapi/getRequiredTags:getRequiredTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRequiredTagsResult.fromMap(result);
}
