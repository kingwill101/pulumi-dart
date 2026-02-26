import 'package:pulumi/pulumi.dart';
import 'get_workflow_invocation_args.dart';
import 'get_workflow_invocation_result.dart';

/// Fetches a single WorkflowInvocation.
Future<GetWorkflowInvocationResult> getWorkflowInvocation(
  GetWorkflowInvocationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkflowInvocation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowInvocationResult.fromMap(result);
}
