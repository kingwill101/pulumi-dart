import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_recaptchaenterprise_v1_args.dart';
import 'get_key_recaptchaenterprise_v1_result.dart';

/// Returns the specified key.
Future<GetKeyRecaptchaenterpriseV1Result> getKeyRecaptchaenterpriseV1(
  GetKeyRecaptchaenterpriseV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRecaptchaenterpriseV1Result.fromMap(result);
}
