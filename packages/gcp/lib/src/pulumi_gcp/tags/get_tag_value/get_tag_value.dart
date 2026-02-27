import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_value_args.dart';
import 'get_tag_value_result.dart';

/// Get a tag value by `parent` key and `short_name`.
Future<GetTagValueResult> getTagValue(
  GetTagValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValue:getTagValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagValueResult.fromMap(result);
}
