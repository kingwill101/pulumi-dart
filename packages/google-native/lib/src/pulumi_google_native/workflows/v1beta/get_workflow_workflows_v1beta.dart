import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_workflows_v1beta_args.dart';
import 'get_workflow_workflows_v1beta_result.dart';

/// Gets details of a single Workflow.
Future<GetWorkflowWorkflowsV1betaResult> getWorkflowWorkflowsV1beta(
  GetWorkflowWorkflowsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflows/v1beta:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowWorkflowsV1betaResult.fromMap(result);
}
