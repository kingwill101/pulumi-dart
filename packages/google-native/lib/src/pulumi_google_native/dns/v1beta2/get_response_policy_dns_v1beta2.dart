import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_policy_dns_v1beta2_args.dart';
import 'get_response_policy_dns_v1beta2_result.dart';

/// Fetches the representation of an existing Response Policy.
Future<GetResponsePolicyDnsV1beta2Result> getResponsePolicyDnsV1beta2(
  GetResponsePolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyDnsV1beta2Result.fromMap(result);
}
