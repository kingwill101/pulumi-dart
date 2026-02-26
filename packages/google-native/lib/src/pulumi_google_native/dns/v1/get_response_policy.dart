import 'package:pulumi/pulumi.dart';
import 'get_response_policy_args.dart';
import 'get_response_policy_result.dart';

/// Fetches the representation of an existing Response Policy.
Future<GetResponsePolicyResult> getResponsePolicy(
  GetResponsePolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyResult.fromMap(result);
}
