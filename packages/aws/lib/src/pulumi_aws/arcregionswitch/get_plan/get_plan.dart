import 'package:pulumi/pulumi.dart';
import 'get_plan_args.dart';
import 'get_plan_result.dart';

/// Data source for managing an Amazon ARC Region Switch plan.
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
/// const example = aws.arcregionswitch.getPlan({
/// arn: "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arcregionswitch.get_plan(arn="arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ArcRegionSwitch.GetPlan.Invoke(new()
/// {
/// Arn = "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arcregionswitch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := arcregionswitch.LookupPlan(ctx, &arcregionswitch.LookupPlanArgs{
/// Arn: "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
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
/// import com.pulumi.aws.arcregionswitch.ArcregionswitchFunctions;
/// import com.pulumi.aws.arcregionswitch.inputs.GetPlanArgs;
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
/// final var example = ArcregionswitchFunctions.getPlan(GetPlanArgs.builder()
/// .arn("arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:arcregionswitch:getPlan
/// arguments:
/// arn: arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:arcregionswitch/getPlan:getPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}
