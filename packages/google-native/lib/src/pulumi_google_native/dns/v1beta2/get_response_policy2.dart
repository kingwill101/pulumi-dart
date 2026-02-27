import 'package:pulumi/pulumi.dart' hide Config;
import 'get_response_policy_args2.dart';
import 'get_response_policy_result2.dart';

/// Fetches the representation of an existing Response Policy.
Future<GetResponsePolicyResult2> getResponsePolicy2(
  GetResponsePolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyResult2.fromMap(result);
}
