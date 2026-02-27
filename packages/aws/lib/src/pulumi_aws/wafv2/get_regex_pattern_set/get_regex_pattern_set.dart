import 'package:pulumi/pulumi.dart';
import 'get_regex_pattern_set_args.dart';
import 'get_regex_pattern_set_result.dart';

/// Retrieves the summary of a WAFv2 Regex Pattern Set.
Future<GetRegexPatternSetResult> getRegexPatternSet(
  GetRegexPatternSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getRegexPatternSet:getRegexPatternSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegexPatternSetResult.fromMap(result);
}
