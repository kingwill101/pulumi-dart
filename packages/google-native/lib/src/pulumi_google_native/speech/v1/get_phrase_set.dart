import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_phrase_set_args.dart';
import 'get_phrase_set_result.dart';

/// Get a phrase set.
Future<GetPhraseSetResult> getPhraseSet(
  GetPhraseSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:speech/v1:getPhraseSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhraseSetResult.fromMap(result);
}
