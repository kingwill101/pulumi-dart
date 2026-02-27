import 'package:pulumi/pulumi.dart';
import 'get_thesaurus_args.dart';
import 'get_thesaurus_result.dart';

/// Provides details about a specific Amazon Kendra Thesaurus.
Future<GetThesaurusResult> getThesaurus(
  GetThesaurusArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getThesaurus:getThesaurus',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetThesaurusResult.fromMap(result);
}
