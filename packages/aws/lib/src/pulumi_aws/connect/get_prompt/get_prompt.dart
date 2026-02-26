import 'package:pulumi/pulumi.dart';
import 'get_prompt_args.dart';
import 'get_prompt_result.dart';

/// Provides details about a specific Amazon Connect Prompt.
///
/// ## Example Usage
///
/// By <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getPrompt({
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "Beep.wav",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_prompt(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name="Beep.wav")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Connect.GetPrompt.Invoke(new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "Beep.wav",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.GetPrompt(ctx, &connect.GetPromptArgs{
/// InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name:       "Beep.wav",
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetPromptArgs;
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
/// final var example = ConnectFunctions.getPrompt(GetPromptArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("Beep.wav")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:connect:getPrompt
/// arguments:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: Beep.wav
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPromptResult> getPrompt(
  GetPromptArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getPrompt:getPrompt',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPromptResult.fromMap(result);
}
