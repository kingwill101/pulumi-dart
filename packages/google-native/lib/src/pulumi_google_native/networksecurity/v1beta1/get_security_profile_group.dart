import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_profile_group_args.dart';
import 'get_security_profile_group_result.dart';

/// Gets details of a single SecurityProfileGroup.
Future<GetSecurityProfileGroupResult> getSecurityProfileGroup(
  GetSecurityProfileGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getSecurityProfileGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileGroupResult.fromMap(result);
}
