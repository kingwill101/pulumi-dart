import 'package:pulumi/pulumi.dart';
import 'get_contact_flow_args.dart';
import 'get_contact_flow_result.dart';

/// Provides details about a specific Amazon Connect Contact Flow.
///
/// ## Example Usage
///
/// By name
///
///
///
/// By contact_flow_id
Future<GetContactFlowResult> getContactFlow(
  GetContactFlowArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getContactFlow:getContactFlow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactFlowResult.fromMap(result);
}
