import 'package:pulumi/pulumi.dart';
import 'get_query_suggestions_block_list_args.dart';
import 'get_query_suggestions_block_list_result.dart';

/// Provides details about a specific Amazon Kendra block list used for query suggestions for an index.
Future<GetQuerySuggestionsBlockListResult> getQuerySuggestionsBlockList(
  GetQuerySuggestionsBlockListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getQuerySuggestionsBlockList:getQuerySuggestionsBlockList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQuerySuggestionsBlockListResult.fromMap(result);
}
