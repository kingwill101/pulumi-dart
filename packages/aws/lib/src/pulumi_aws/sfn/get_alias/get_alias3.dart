import 'package:pulumi/pulumi.dart';
import 'get_alias_args3.dart';
import 'get_alias_result3.dart';

/// Data source for managing an AWS SFN (Step Functions) State Machine Alias.
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
/// const example = aws.sfn.getAlias({
/// name: "my_sfn_alias",
/// statemachineArn: sfnTest.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sfn.get_alias(name="my_sfn_alias",
/// statemachine_arn=sfn_test["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Sfn.GetAlias.Invoke(new()
/// {
/// Name = "my_sfn_alias",
/// StatemachineArn = sfnTest.Arn,
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
/// _, err := sfn.LookupAlias(ctx, &sfn.LookupAliasArgs{
/// Name:            "my_sfn_alias",
/// StatemachineArn: sfnTest.Arn,
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
/// import com.pulumi.aws.sfn.inputs.GetAliasArgs;
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
/// final var example = SfnFunctions.getAlias(GetAliasArgs.builder()
/// .name("my_sfn_alias")
/// .statemachineArn(sfnTest.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:sfn:getAlias
/// arguments:
/// name: my_sfn_alias
/// statemachineArn: ${sfnTest.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAliasResult3> getAlias3(
  GetAliasArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getAlias:getAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAliasResult3.fromMap(result);
}
