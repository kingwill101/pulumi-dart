import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_dns_v1beta2_args.dart';
import 'get_policy_dns_v1beta2_result.dart';

/// Fetches the representation of an existing Policy.
Future<GetPolicyDnsV1beta2Result> getPolicyDnsV1beta2(
  GetPolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDnsV1beta2Result.fromMap(result);
}
