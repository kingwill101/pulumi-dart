import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_tags_args.dart';
import 'get_resource_tags_result.dart';

/// Get tags attached to the specified AWS Organizations resource.
Future<GetResourceTagsResult> getResourceTags(
  GetResourceTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getResourceTags:getResourceTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceTagsResult.fromMap(result);
}
