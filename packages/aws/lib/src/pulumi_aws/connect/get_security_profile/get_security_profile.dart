import 'package:pulumi/pulumi.dart';
import 'get_security_profile_args.dart';
import 'get_security_profile_result.dart';

/// Provides details about a specific Amazon Connect Security Profile.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `security_profile_id`
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getSecurityProfile:getSecurityProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}
