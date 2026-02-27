import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_profile_args.dart';
import 'get_security_profile_result.dart';

/// GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is not present for the specified organization.
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}
