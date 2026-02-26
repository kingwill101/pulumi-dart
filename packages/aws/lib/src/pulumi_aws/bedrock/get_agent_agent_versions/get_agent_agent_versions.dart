import 'package:pulumi/pulumi.dart';
import 'get_agent_agent_versions_args.dart';
import 'get_agent_agent_versions_result.dart';

/// Data source for managing an AWS Amazon BedrockAgent Agent Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getAgentAgentVersions({
/// agentId: testAwsBedrockagentAgent.agentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_agent_agent_versions(agent_id=test_aws_bedrockagent_agent["agentId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Bedrock.GetAgentAgentVersions.Invoke(new()
/// {
/// AgentId = testAwsBedrockagentAgent.AgentId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.GetAgentAgentVersions(ctx, &bedrock.GetAgentAgentVersionsArgs{
/// AgentId: testAwsBedrockagentAgent.AgentId,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetAgentAgentVersionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = BedrockFunctions.getAgentAgentVersions(GetAgentAgentVersionsArgs.builder()
/// .agentId(testAwsBedrockagentAgent.agentId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:bedrock:getAgentAgentVersions
/// arguments:
/// agentId: ${testAwsBedrockagentAgent.agentId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAgentAgentVersionsResult> getAgentAgentVersions(
  GetAgentAgentVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getAgentAgentVersions:getAgentAgentVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAgentAgentVersionsResult.fromMap(result);
}
