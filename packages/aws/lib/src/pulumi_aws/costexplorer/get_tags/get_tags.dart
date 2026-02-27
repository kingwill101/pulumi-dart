import 'package:pulumi/pulumi.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// Provides the available cost allocation tag keys and tag values for a specified period.
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getTags:getTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
