import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// Provides the available cost allocation tag keys and tag values for a specified period.
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getTags:getTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
