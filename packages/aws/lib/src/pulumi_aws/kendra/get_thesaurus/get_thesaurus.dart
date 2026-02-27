import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_thesaurus_args.dart';
import 'get_thesaurus_result.dart';

/// Provides details about a specific Amazon Kendra Thesaurus.
Future<GetThesaurusResult> getThesaurus(
  GetThesaurusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getThesaurus:getThesaurus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThesaurusResult.fromMap(result);
}
