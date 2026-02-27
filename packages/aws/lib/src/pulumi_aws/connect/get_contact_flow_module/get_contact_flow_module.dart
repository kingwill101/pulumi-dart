import 'package:pulumi/pulumi.dart';
import 'get_contact_flow_module_args.dart';
import 'get_contact_flow_module_result.dart';

/// Provides details about a specific Amazon Connect Contact Flow Module.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `contact_flow_module_id`
Future<GetContactFlowModuleResult> getContactFlowModule(
  GetContactFlowModuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getContactFlowModule:getContactFlowModule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactFlowModuleResult.fromMap(result);
}
