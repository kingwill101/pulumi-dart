import 'package:pulumi/pulumi.dart' hide Config;
import 'get_phrase_matcher_args.dart';
import 'get_phrase_matcher_result.dart';

/// Gets a phrase matcher.
Future<GetPhraseMatcherResult> getPhraseMatcher(
  GetPhraseMatcherArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getPhraseMatcher',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPhraseMatcherResult.fromMap(result);
}
