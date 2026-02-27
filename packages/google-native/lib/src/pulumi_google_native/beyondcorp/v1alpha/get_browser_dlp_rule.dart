import 'package:pulumi/pulumi.dart' hide Config;
import 'get_browser_dlp_rule_args.dart';
import 'get_browser_dlp_rule_result.dart';

/// Gets details of a single BrowserDlpRule.
Future<GetBrowserDlpRuleResult> getBrowserDlpRule(
  GetBrowserDlpRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getBrowserDlpRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBrowserDlpRuleResult.fromMap(result);
}
