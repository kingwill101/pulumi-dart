import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_browser_dlp_rule_args.dart';
import 'get_browser_dlp_rule_result.dart';

/// Gets details of a single BrowserDlpRule.
Future<GetBrowserDlpRuleResult> getBrowserDlpRule(
  GetBrowserDlpRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getBrowserDlpRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrowserDlpRuleResult.fromMap(result);
}
