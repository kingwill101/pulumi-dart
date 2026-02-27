import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_profile_args2.dart';
import 'get_security_profile_result2.dart';

/// Gets details of a single SecurityProfile.
Future<GetSecurityProfileResult2> getSecurityProfile2(
  GetSecurityProfileArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult2.fromMap(result);
}
