import 'package:pulumi/pulumi.dart';
import 'get_android_app_args.dart';
import 'get_android_app_result.dart';

/// A Google Cloud Firebase Android application instance
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidApp:getAndroidApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}
