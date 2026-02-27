import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_security_policy_args3.dart';
import 'get_region_security_policy_result3.dart';

/// List all of the ordered rules present in a single specified policy.
Future<GetRegionSecurityPolicyResult3> getRegionSecurityPolicy3(
  GetRegionSecurityPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult3.fromMap(result);
}
