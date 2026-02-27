import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_code_args.dart';
import 'get_registration_code_result.dart';

/// Gets a registration code used to register a CA certificate with AWS IoT.
Future<GetRegistrationCodeResult> getRegistrationCode(
  GetRegistrationCodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getRegistrationCode:getRegistrationCode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationCodeResult.fromMap(result);
}
