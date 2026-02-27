import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_values_args.dart';
import 'get_tag_values_result.dart';

/// Get tag values from a `parent` key.
Future<GetTagValuesResult> getTagValues(
  GetTagValuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValues:getTagValues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagValuesResult.fromMap(result);
}
