import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_slack_workspace_args.dart';
import 'get_slack_workspace_result.dart';

/// Data source for managing an AWS Chatbot Slack Workspace.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetSlackWorkspaceResult> getSlackWorkspace(
  GetSlackWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:chatbot/getSlackWorkspace:getSlackWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSlackWorkspaceResult.fromMap(result);
}
