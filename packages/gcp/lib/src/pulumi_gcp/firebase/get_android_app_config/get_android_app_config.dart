import 'package:pulumi/pulumi.dart';
import 'get_android_app_config_args.dart';
import 'get_android_app_config_result.dart';

Future<GetAndroidAppConfigResult> getAndroidAppConfig(
  GetAndroidAppConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidAppConfig:getAndroidAppConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppConfigResult.fromMap(result);
}
