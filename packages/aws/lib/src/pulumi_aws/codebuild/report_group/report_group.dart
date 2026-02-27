import 'package:pulumi/pulumi.dart' as pulumi;
import '../report_group_export_config/report_group_export_config.dart';
import 'report_group_args.dart';

/// Provides a CodeBuild Report Groups Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild report group.
///
///
/// Using `pulumi import`, import CodeBuild Report Group using the CodeBuild Report Group arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/reportGroup:ReportGroup example arn:aws:codebuild:us-west-2:123456789:report-group/report-group-name
/// ```
class ReportGroup extends pulumi.CustomResource {
  /// The ARN of Report Group.
  late final pulumi.Output<String> arn;

  /// The date and time this Report Group was created.
  late final pulumi.Output<String> created;

  /// If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  late final pulumi.Output<bool?> deleteReports;

  /// Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  late final pulumi.Output<ReportGroupExportConfig> exportConfig;

  /// The name of a Report Group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  late final pulumi.Output<String> type;

  ReportGroup(
    String name, {
    ReportGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/reportGroup:ReportGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.created = registerOutput<String>('created');
    this.deleteReports = registerOutput<bool?>('deleteReports');
    this.exportConfig = registerOutput<ReportGroupExportConfig>('exportConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
