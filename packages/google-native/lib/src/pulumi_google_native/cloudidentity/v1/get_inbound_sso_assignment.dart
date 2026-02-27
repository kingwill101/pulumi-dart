import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inbound_sso_assignment_args.dart';
import 'get_inbound_sso_assignment_result.dart';

/// Gets an InboundSsoAssignment.
Future<GetInboundSsoAssignmentResult> getInboundSsoAssignment(
  GetInboundSsoAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSsoAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSsoAssignmentResult.fromMap(result);
}
