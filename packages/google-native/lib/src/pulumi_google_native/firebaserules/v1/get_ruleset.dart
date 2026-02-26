import 'package:pulumi/pulumi.dart';
import 'get_ruleset_args.dart';
import 'get_ruleset_result.dart';

/// Get a `Ruleset` by name including the full `Source` contents.
Future<GetRulesetResult> getRuleset(
  GetRulesetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaserules/v1:getRuleset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRulesetResult.fromMap(result);
}
