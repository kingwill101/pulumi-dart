import 'package:pulumi/pulumi.dart';
import 'get_state_machine_args.dart';
import 'get_state_machine_result.dart';

/// Use this data source to get the ARN of a State Machine in AWS Step
/// Function (SFN). By using this data source, you can reference a
/// state machine without having to hard code the ARNs as input.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sfn.getStateMachine({
/// name: "an_example_sfn_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sfn.get_state_machine(name="an_example_sfn_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Sfn.GetStateMachine.Invoke(new()
/// {
/// Name = "an_example_sfn_name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sfn.LookupStateMachine(ctx, &sfn.LookupStateMachineArgs{
/// Name: "an_example_sfn_name",
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
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetStateMachineArgs;
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
/// final var example = SfnFunctions.getStateMachine(GetStateMachineArgs.builder()
/// .name("an_example_sfn_name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:sfn:getStateMachine
/// arguments:
/// name: an_example_sfn_name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetStateMachineResult> getStateMachine(
  GetStateMachineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachine:getStateMachine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStateMachineResult.fromMap(result);
}
