import 'package:pulumi/pulumi.dart';
import 'get_state_machine_versions_args.dart';
import 'get_state_machine_versions_result.dart';

/// Data source for managing an AWS SFN (Step Functions) State Machine Versions.
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
/// const test = aws.sfn.getStateMachineVersions({
/// statemachineArn: testAwsSfnStateMachine.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sfn.get_state_machine_versions(statemachine_arn=test_aws_sfn_state_machine["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Sfn.GetStateMachineVersions.Invoke(new()
/// {
/// StatemachineArn = testAwsSfnStateMachine.Arn,
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
/// _, err := sfn.GetStateMachineVersions(ctx, &sfn.GetStateMachineVersionsArgs{
/// StatemachineArn: testAwsSfnStateMachine.Arn,
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
/// import com.pulumi.aws.sfn.inputs.GetStateMachineVersionsArgs;
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
/// final var test = SfnFunctions.getStateMachineVersions(GetStateMachineVersionsArgs.builder()
/// .statemachineArn(testAwsSfnStateMachine.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:sfn:getStateMachineVersions
/// arguments:
/// statemachineArn: ${testAwsSfnStateMachine.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetStateMachineVersionsResult> getStateMachineVersions(
  GetStateMachineVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachineVersions:getStateMachineVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStateMachineVersionsResult.fromMap(result);
}
