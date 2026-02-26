import 'package:pulumi/pulumi.dart';
import 'get_region_ssl_policy_args3.dart';
import 'get_region_ssl_policy_result3.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetRegionSslPolicyResult3> getRegionSslPolicy3(
  GetRegionSslPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyResult3.fromMap(result);
}
