import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_cloudidentity_v1beta1_args.dart';
import 'get_membership_cloudidentity_v1beta1_result.dart';

/// Retrieves a `Membership`.
Future<GetMembershipCloudidentityV1beta1Result>
    getMembershipCloudidentityV1beta1(
  GetMembershipCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipCloudidentityV1beta1Result.fromMap(result);
}
