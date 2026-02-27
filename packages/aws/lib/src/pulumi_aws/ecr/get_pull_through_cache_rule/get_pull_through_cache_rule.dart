import 'package:pulumi/pulumi.dart';
import 'get_pull_through_cache_rule_args.dart';
import 'get_pull_through_cache_rule_result.dart';

/// The ECR Pull Through Cache Rule data source allows the upstream registry URL and registry ID to be retrieved for a Pull Through Cache Rule.
Future<GetPullThroughCacheRuleResult> getPullThroughCacheRule(
  GetPullThroughCacheRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getPullThroughCacheRule:getPullThroughCacheRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPullThroughCacheRuleResult.fromMap(result);
}
