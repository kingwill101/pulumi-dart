// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_group_export_config.dart';

/// {@template pulumi_codebuild_report_group_report_group_args_doc}
/// The set of arguments for ReportGroup.
/// {@endtemplate}
/// {@macro pulumi_codebuild_report_group_report_group_args_doc}
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

  /// Creates a new [ReportGroupArgs].
  /// [deleteReports] If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  /// [exportConfig] Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  /// [name] The name of a Report Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  ReportGroupArgs({
    this.deleteReports,
    required this.exportConfig,
    this.name,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteReports': ?deleteReports,
      'exportConfig':
          pulumi.Input.mapInputValue<
            ReportGroupExportConfig,
            Map<String, dynamic>
          >(exportConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ReportGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReportGroupArgs(
      deleteReports: (() {
        final guardedValue = map['deleteReports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exportConfig: pulumi.Input.fromValue(
        ReportGroupExportConfig.fromMap(
          (map['exportConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
