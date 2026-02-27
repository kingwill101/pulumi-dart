import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_guest_policy_args.dart';
import 'get_guest_policy_result.dart';

/// Get an OS Config guest policy.
Future<GetGuestPolicyResult> getGuestPolicy(
  GetGuestPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getGuestPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestPolicyResult.fromMap(result);
}
