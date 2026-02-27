import 'package:pulumi/pulumi.dart' hide Config;
import 'get_android_app_args.dart';
import 'get_android_app_result.dart';

/// Gets the specified AndroidApp.
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getAndroidApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}
