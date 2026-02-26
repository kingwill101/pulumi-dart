import 'package:pulumi/pulumi.dart';
import 'get_inbound_sso_assignment_args2.dart';
import 'get_inbound_sso_assignment_result2.dart';

/// Gets an InboundSsoAssignment.
Future<GetInboundSsoAssignmentResult2> getInboundSsoAssignment2(
  GetInboundSsoAssignmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSsoAssignment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInboundSsoAssignmentResult2.fromMap(result);
}
