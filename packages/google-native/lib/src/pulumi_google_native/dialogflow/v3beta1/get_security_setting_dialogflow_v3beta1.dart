import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_setting_dialogflow_v3beta1_args.dart';
import 'get_security_setting_dialogflow_v3beta1_result.dart';

/// Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
Future<GetSecuritySettingDialogflowV3beta1Result>
    getSecuritySettingDialogflowV3beta1(
  GetSecuritySettingDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSecuritySetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingDialogflowV3beta1Result.fromMap(result);
}
