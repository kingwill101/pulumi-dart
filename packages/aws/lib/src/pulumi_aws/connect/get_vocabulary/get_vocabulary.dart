import 'package:pulumi/pulumi.dart';
import 'get_vocabulary_args.dart';
import 'get_vocabulary_result.dart';

/// Provides details about a specific Amazon Connect Vocabulary.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `vocabulary_id`
Future<GetVocabularyResult> getVocabulary(
  GetVocabularyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getVocabulary:getVocabulary',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVocabularyResult.fromMap(result);
}
