// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../report_group_export_config/report_group_export_config.dart';

/// The set of arguments for ReportGroup.
class ReportGroupArgs {
  /// If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  final pulumi.Input<bool>? deleteReports;

  /// Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  final pulumi.Input<ReportGroupExportConfig> exportConfig;

  /// The name of a Report Group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  final pulumi.Input<String> type;

  ReportGroupArgs({
    this.deleteReports,
    required this.exportConfig,
    this.name,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteReportsValue = deleteReports;
    if (deleteReportsValue != null) {
      map['deleteReports'] = deleteReportsValue;
    }
    map['exportConfig'] = pulumi.Input.mapInputValue<ReportGroupExportConfig,
        Map<String, dynamic>>(exportConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory ReportGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReportGroupArgs(
      deleteReports: pulumi.Input.asOptionalInput<bool>(map['deleteReports']),
      exportConfig:
          pulumi.Input.asInput<ReportGroupExportConfig>(map['exportConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
