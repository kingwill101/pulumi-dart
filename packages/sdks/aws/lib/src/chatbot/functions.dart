import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_slack_workspace_args.dart';
import 'get_slack_workspace_result.dart';

/// Data source for managing an AWS Chatbot Slack Workspace.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.chatbot.getSlackWorkspace({
///     slackTeamName: "abc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.chatbot.get_slack_workspace(slack_team_name="abc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Chatbot.GetSlackWorkspace.Invoke(new()
///     {
///         SlackTeamName = "abc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chatbot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chatbot.GetSlackWorkspace(ctx, &chatbot.GetSlackWorkspaceArgs{
/// 			SlackTeamName: "abc",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chatbot.ChatbotFunctions;
/// import com.pulumi.aws.chatbot.inputs.GetSlackWorkspaceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ChatbotFunctions.getSlackWorkspace(GetSlackWorkspaceArgs.builder()
///             .slackTeamName("abc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:chatbot:getSlackWorkspace
///       arguments:
///         slackTeamName: abc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_chatbot_get_slack_workspace_get_slack_workspace_args_doc}
/// [options] Invoke options controlling this call.
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
