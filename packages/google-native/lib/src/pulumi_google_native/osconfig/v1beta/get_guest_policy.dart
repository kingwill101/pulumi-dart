import 'package:pulumi/pulumi.dart' hide Config;
import 'get_guest_policy_args.dart';
import 'get_guest_policy_result.dart';

/// Get an OS Config guest policy.
Future<GetGuestPolicyResult> getGuestPolicy(
  GetGuestPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getGuestPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGuestPolicyResult.fromMap(result);
}
