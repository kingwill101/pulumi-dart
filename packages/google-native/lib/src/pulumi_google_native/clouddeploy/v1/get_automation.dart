import 'package:pulumi/pulumi.dart';
import 'get_automation_args.dart';
import 'get_automation_result.dart';

/// Gets details of a single Automation.
Future<GetAutomationResult> getAutomation(
  GetAutomationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getAutomation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutomationResult.fromMap(result);
}
