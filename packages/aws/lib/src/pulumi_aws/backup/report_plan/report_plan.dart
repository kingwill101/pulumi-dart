import 'package:pulumi/pulumi.dart';
import '../report_plan_report_delivery_channel/report_plan_report_delivery_channel.dart';
import '../report_plan_report_setting/report_plan_report_setting.dart';
import 'report_plan_args.dart';

/// Provides an AWS Backup Report Plan resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.ReportPlan("example", {
/// name: "example_name",
/// description: "example description",
/// reportDeliveryChannel: {
/// formats: [
/// "CSV",
/// "JSON",
/// ],
/// s3BucketName: "example-bucket-name",
/// },
/// reportSetting: {
/// reportTemplate: "RESTORE_JOB_REPORT",
/// },
/// tags: {
/// Name: "Example Report Plan",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.ReportPlan("example",
/// name="example_name",
/// description="example description",
/// report_delivery_channel={
/// "formats": [
/// "CSV",
/// "JSON",
/// ],
/// "s3_bucket_name": "example-bucket-name",
/// },
/// report_setting={
/// "report_template": "RESTORE_JOB_REPORT",
/// },
/// tags={
/// "Name": "Example Report Plan",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Backup.ReportPlan("example", new()
/// {
/// Name = "example_name",
/// Description = "example description",
/// ReportDeliveryChannel = new Aws.Backup.Inputs.ReportPlanReportDeliveryChannelArgs
/// {
/// Formats = new[]
/// {
/// "CSV",
/// "JSON",
/// },
/// S3BucketName = "example-bucket-name",
/// },
/// ReportSetting = new Aws.Backup.Inputs.ReportPlanReportSettingArgs
/// {
/// ReportTemplate = "RESTORE_JOB_REPORT",
/// },
/// Tags =
/// {
/// { "Name", "Example Report Plan" },
/// },
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
/// _, err := backup.NewReportPlan(ctx, "example", &backup.ReportPlanArgs{
/// Name:        pulumi.String("example_name"),
/// Description: pulumi.String("example description"),
/// ReportDeliveryChannel: &backup.ReportPlanReportDeliveryChannelArgs{
/// Formats: pulumi.StringArray{
/// pulumi.String("CSV"),
/// pulumi.String("JSON"),
/// },
/// S3BucketName: pulumi.String("example-bucket-name"),
/// },
/// ReportSetting: &backup.ReportPlanReportSettingArgs{
/// ReportTemplate: pulumi.String("RESTORE_JOB_REPORT"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example Report Plan"),
/// },
/// })
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
/// import com.pulumi.aws.backup.ReportPlan;
/// import com.pulumi.aws.backup.ReportPlanArgs;
/// import com.pulumi.aws.backup.inputs.ReportPlanReportDeliveryChannelArgs;
/// import com.pulumi.aws.backup.inputs.ReportPlanReportSettingArgs;
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
/// var example = new ReportPlan("example", ReportPlanArgs.builder()
/// .name("example_name")
/// .description("example description")
/// .reportDeliveryChannel(ReportPlanReportDeliveryChannelArgs.builder()
/// .formats(
/// "CSV",
/// "JSON")
/// .s3BucketName("example-bucket-name")
/// .build())
/// .reportSetting(ReportPlanReportSettingArgs.builder()
/// .reportTemplate("RESTORE_JOB_REPORT")
/// .build())
/// .tags(Map.of("Name", "Example Report Plan"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:backup:ReportPlan
/// properties:
/// name: example_name
/// description: example description
/// reportDeliveryChannel:
/// formats:
/// - CSV
/// - JSON
/// s3BucketName: example-bucket-name
/// reportSetting:
/// reportTemplate: RESTORE_JOB_REPORT
/// tags:
/// Name: Example Report Plan
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Backup Report Plan using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> which corresponds to the name of the Backup Report Plan. For example:
///
/// ```sh
/// $ pulumi import aws:backup/reportPlan:ReportPlan test <id>
/// ```
class ReportPlan extends CustomResource {
  /// The ARN of the backup report plan.
  late final Output<String> arn;

  /// The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  late final Output<String> creationTime;

  /// The deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  late final Output<String> deploymentStatus;

  /// The description of the report plan with a maximum of 1,024 characters
  late final Output<String?> description;

  /// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  late final Output<ReportPlanReportDeliveryChannel> reportDeliveryChannel;

  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  late final Output<ReportPlanReportSetting> reportSetting;

  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ReportPlan(
    String name, {
    ReportPlanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/reportPlan:ReportPlan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.reportDeliveryChannel =
        registerOutput<ReportPlanReportDeliveryChannel>(
            'reportDeliveryChannel');
    this.reportSetting =
        registerOutput<ReportPlanReportSetting>('reportSetting');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
