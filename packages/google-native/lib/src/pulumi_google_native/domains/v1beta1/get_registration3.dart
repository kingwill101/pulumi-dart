import 'package:pulumi/pulumi.dart' hide Config;
import 'get_registration_args3.dart';
import 'get_registration_result3.dart';

/// Gets the details of a `Registration` resource.
Future<GetRegistrationResult3> getRegistration3(
  GetRegistrationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationResult3.fromMap(result);
}
