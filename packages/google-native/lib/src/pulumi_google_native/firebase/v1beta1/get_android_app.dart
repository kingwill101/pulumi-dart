import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_app_args.dart';
import 'get_android_app_result.dart';

/// Gets the specified AndroidApp.
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getAndroidApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}
