import 'package:pulumi/pulumi.dart';
import 'get_registration_args.dart';
import 'get_registration_result.dart';

/// Gets the details of a `Registration` resource.
Future<GetRegistrationResult> getRegistration(
  GetRegistrationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1:getRegistration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationResult.fromMap(result);
}
