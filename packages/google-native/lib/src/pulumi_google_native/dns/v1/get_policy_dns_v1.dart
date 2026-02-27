import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_dns_v1_args.dart';
import 'get_policy_dns_v1_result.dart';

/// Fetches the representation of an existing Policy.
Future<GetPolicyDnsV1Result> getPolicyDnsV1(
  GetPolicyDnsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDnsV1Result.fromMap(result);
}
