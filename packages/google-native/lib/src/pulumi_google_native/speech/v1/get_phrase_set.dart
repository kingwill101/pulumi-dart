import 'package:pulumi/pulumi.dart' hide Config;
import 'get_phrase_set_args.dart';
import 'get_phrase_set_result.dart';

/// Get a phrase set.
Future<GetPhraseSetResult> getPhraseSet(
  GetPhraseSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:speech/v1:getPhraseSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPhraseSetResult.fromMap(result);
}
