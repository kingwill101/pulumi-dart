import 'package:pulumi/pulumi.dart';
import 'get_ios_app_args.dart';
import 'get_ios_app_result.dart';

/// Gets the specified IosApp.
Future<GetIosAppResult> getIosApp(
  GetIosAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getIosApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIosAppResult.fromMap(result);
}
