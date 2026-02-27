import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regex_pattern_set_args.dart';
import 'get_regex_pattern_set_result.dart';

/// Retrieves the summary of a WAFv2 Regex Pattern Set.
Future<GetRegexPatternSetResult> getRegexPatternSet(
  GetRegexPatternSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getRegexPatternSet:getRegexPatternSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegexPatternSetResult.fromMap(result);
}
