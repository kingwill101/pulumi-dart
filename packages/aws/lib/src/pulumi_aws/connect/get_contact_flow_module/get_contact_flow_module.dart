import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getContactFlowModule:getContactFlowModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactFlowModuleResult.fromMap(result);
}
