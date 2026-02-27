import 'package:pulumi/pulumi.dart';
import 'get_default_tags_args.dart';
import 'get_default_tags_result.dart';

/// Use this data source to get the default tags configured on the provider.
///
/// With this data source, you can apply default tags to resources not _directly_ managed by a resource, such as the instances underneath an Auto Scaling group or the volumes created for an EC2 instance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Dynamically Apply Default Tags to Auto Scaling Group
Future<GetDefaultTagsResult> getDefaultTags(
  GetDefaultTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getDefaultTags:getDefaultTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultTagsResult.fromMap(result);
}
