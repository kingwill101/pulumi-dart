import 'package:pulumi/pulumi.dart' hide Config;
import 'get_membership_args.dart';
import 'get_membership_result.dart';

/// Retrieves a `Membership`.
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getMembership',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}
