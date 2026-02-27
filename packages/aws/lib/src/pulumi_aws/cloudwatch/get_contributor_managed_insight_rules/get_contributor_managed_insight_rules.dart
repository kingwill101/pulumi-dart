import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contributor_managed_insight_rules_args.dart';
import 'get_contributor_managed_insight_rules_result.dart';

/// Data source for managing an AWS CloudWatch Contributor Managed Insight Rules.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContributorManagedInsightRulesResult>
    getContributorManagedInsightRules(
  GetContributorManagedInsightRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getContributorManagedInsightRules:getContributorManagedInsightRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContributorManagedInsightRulesResult.fromMap(result);
}
