import 'package:pulumi/pulumi.dart';
import 'get_policy_args3.dart';
import 'get_policy_result3.dart';

/// Fetches the representation of an existing Policy.
Future<GetPolicyResult3> getPolicy3(
  GetPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult3.fromMap(result);
}
