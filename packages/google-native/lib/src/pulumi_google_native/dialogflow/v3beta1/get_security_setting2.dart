import 'package:pulumi/pulumi.dart';
import 'get_security_setting_args2.dart';
import 'get_security_setting_result2.dart';

/// Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.
Future<GetSecuritySettingResult2> getSecuritySetting2(
  GetSecuritySettingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSecuritySetting',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingResult2.fromMap(result);
}
