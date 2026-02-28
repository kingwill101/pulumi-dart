import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_args.dart';
import 'get_release_result.dart';
import 'get_ruleset_args.dart';
import 'get_ruleset_result.dart';

/// Get a `Release` by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaserules_v1_get_release_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReleaseResult> getRelease(
  GetReleaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaserules/v1:getRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult.fromMap(result);
}

/// Get a `Ruleset` by name including the full `Source` contents.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaserules_v1_get_ruleset_args_doc}
/// [options] Invoke options controlling this call.
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
