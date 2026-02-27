import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_setting_args.dart';
import 'get_security_setting_result.dart';

/// Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
Future<GetSecuritySettingResult> getSecuritySetting(
  GetSecuritySettingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSecuritySetting',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingResult.fromMap(result);
}
