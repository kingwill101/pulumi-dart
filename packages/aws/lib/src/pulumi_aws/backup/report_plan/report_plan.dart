import 'package:pulumi/pulumi.dart' as pulumi;
import '../report_plan_report_delivery_channel/report_plan_report_delivery_channel.dart';
import '../report_plan_report_setting/report_plan_report_setting.dart';
import 'report_plan_args.dart';

/// Provides an AWS Backup Report Plan resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Report Plan using the `id` which corresponds to the name of the Backup Report Plan. For example:
///
/// ```sh
/// $ pulumi import aws:backup/reportPlan:ReportPlan test <id>
/// ```
class ReportPlan extends pulumi.CustomResource {
  /// The ARN of the backup report plan.
  late final pulumi.Output<String> arn;

  /// The date and time that a report plan is created, in Unix format and Coordinated Universal Time (UTC).
  late final pulumi.Output<String> creationTime;

  /// The deployment status of a report plan. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED`.
  late final pulumi.Output<String> deploymentStatus;

  /// The description of the report plan with a maximum of 1,024 characters
  late final pulumi.Output<String?> description;

  /// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An object that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports. Detailed below.
  late final pulumi.Output<ReportPlanReportDeliveryChannel>
      reportDeliveryChannel;

  /// An object that identifies the report template for the report. Reports are built using a report template. Detailed below.
  late final pulumi.Output<ReportPlanReportSetting> reportSetting;

  /// Metadata that you can assign to help organize the report plans you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ReportPlan(
    String name, {
    ReportPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/reportPlan:ReportPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
