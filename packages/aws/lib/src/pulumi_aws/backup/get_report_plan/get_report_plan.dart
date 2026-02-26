import 'package:pulumi/pulumi.dart';
import 'get_report_plan_args.dart';
import 'get_report_plan_result.dart';

/// Use this data source to get information on an existing backup report plan.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.backup.getReportPlan({
/// name: "my_example_backup_report_plan_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.get_report_plan(name="my_example_backup_report_plan_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Backup.GetReportPlan.Invoke(new()
/// {
/// Name = "my_example_backup_report_plan_name",
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
/// _, err := backup.LookupReportPlan(ctx, &backup.LookupReportPlanArgs{
/// Name: "my_example_backup_report_plan_name",
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
/// import com.pulumi.aws.backup.inputs.GetReportPlanArgs;
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
/// final var example = BackupFunctions.getReportPlan(GetReportPlanArgs.builder()
/// .name("my_example_backup_report_plan_name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:backup:getReportPlan
/// arguments:
/// name: my_example_backup_report_plan_name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetReportPlanResult> getReportPlan(
  GetReportPlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getReportPlan:getReportPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportPlanResult.fromMap(result);
}
