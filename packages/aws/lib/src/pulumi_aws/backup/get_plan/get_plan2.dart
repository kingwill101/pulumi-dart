import 'package:pulumi/pulumi.dart';
import 'get_plan_args2.dart';
import 'get_plan_result2.dart';

/// Use this data source to get information on an existing backup plan.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getPlan({
/// planId: "my_example_backup_plan_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_plan(plan_id="my_example_backup_plan_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Backup.GetPlan.Invoke(new()
/// {
/// PlanId = "my_example_backup_plan_id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backup.LookupPlan(ctx, &backup.LookupPlanArgs{
/// PlanId: "my_example_backup_plan_id",
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
/// import com.pulumi.aws.backup.BackupFunctions;
/// import com.pulumi.aws.backup.inputs.GetPlanArgs;
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
/// final var example = BackupFunctions.getPlan(GetPlanArgs.builder()
/// .planId("my_example_backup_plan_id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:backup:getPlan
/// arguments:
/// planId: my_example_backup_plan_id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPlanResult2> getPlan2(
  GetPlanArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getPlan:getPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPlanResult2.fromMap(result);
}
