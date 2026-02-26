import 'package:pulumi/pulumi.dart';
import 'get_registration_args2.dart';
import 'get_registration_result2.dart';

/// Gets the details of a `Registration` resource.
Future<GetRegistrationResult2> getRegistration2(
  GetRegistrationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationResult2.fromMap(result);
}
