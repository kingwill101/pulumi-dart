import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inbound_sso_assignment_cloudidentity_v1beta1_args.dart';
import 'get_inbound_sso_assignment_cloudidentity_v1beta1_result.dart';

/// Gets an InboundSsoAssignment.
Future<GetInboundSsoAssignmentCloudidentityV1beta1Result>
    getInboundSsoAssignmentCloudidentityV1beta1(
  GetInboundSsoAssignmentCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSsoAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSsoAssignmentCloudidentityV1beta1Result.fromMap(result);
}
