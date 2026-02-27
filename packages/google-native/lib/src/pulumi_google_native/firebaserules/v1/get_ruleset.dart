import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_args.dart';
import 'get_ruleset_result.dart';

/// Get a `Ruleset` by name including the full `Source` contents.
Future<GetRulesetResult> getRuleset(
  GetRulesetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaserules/v1:getRuleset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesetResult.fromMap(result);
}
