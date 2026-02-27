import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_android_app_args.dart';
import 'get_android_app_result.dart';

/// A Google Cloud Firebase Android application instance
Future<GetAndroidAppResult> getAndroidApp(
  GetAndroidAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAndroidApp:getAndroidApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAndroidAppResult.fromMap(result);
}
