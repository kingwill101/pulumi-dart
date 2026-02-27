import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_phrase_matcher_args.dart';
import 'get_phrase_matcher_result.dart';

/// Gets a phrase matcher.
Future<GetPhraseMatcherResult> getPhraseMatcher(
  GetPhraseMatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getPhraseMatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhraseMatcherResult.fromMap(result);
}
