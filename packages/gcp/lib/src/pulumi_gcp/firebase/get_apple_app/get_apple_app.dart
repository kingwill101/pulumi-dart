import 'package:pulumi/pulumi.dart';
import 'get_apple_app_args.dart';
import 'get_apple_app_result.dart';

/// A Google Cloud Firebase Apple application instance
Future<GetAppleAppResult> getAppleApp(
  GetAppleAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAppleApp:getAppleApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppleAppResult.fromMap(result);
}
