import 'package:pulumi/pulumi.dart';
import 'get_key_args3.dart';
import 'get_key_result3.dart';

/// Returns the specified key.
Future<GetKeyResult3> getKey3(
  GetKeyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyResult3.fromMap(result);
}
