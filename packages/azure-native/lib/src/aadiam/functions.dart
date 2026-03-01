import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_diagnostic_setting_args.dart';
import 'get_diagnostic_setting_result.dart';

/// Gets the active diagnostic setting for AadIam.
///
/// Uses Azure REST API version 2017-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_aadiam_get_diagnostic_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiagnosticSettingResult> getDiagnosticSetting(
  GetDiagnosticSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:aadiam:getDiagnosticSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiagnosticSettingResult.fromMap(result);
}
