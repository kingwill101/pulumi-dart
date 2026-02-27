import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_app_config_args.dart';
import 'get_android_app_config_result.dart';

Future<GetAndroidAppConfigResult> getAndroidAppConfig(
  GetAndroidAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidAppConfig:getAndroidAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppConfigResult.fromMap(result);
}
