// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_group_export_config.dart';

/// Input properties used for looking up and filtering ReportGroup resources.
class ReportGroupState {
  /// The ARN of Report Group.
  final pulumi.Input<String>? arn;
  /// The date and time this Report Group was created.
  final pulumi.Input<String>? created;
  /// If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  final pulumi.Input<bool>? deleteReports;
  /// Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  final pulumi.Input<ReportGroupExportConfig>? exportConfig;
  /// The name of a Report Group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ReportGroupState].
  /// [arn] The ARN of Report Group.
  /// [created] The date and time this Report Group was created.
  /// [deleteReports] If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  /// [exportConfig] Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  /// [name] The name of a Report Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  const ReportGroupState({
    this.arn,
    this.created,
    this.deleteReports,
    this.exportConfig,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'created': ?created,
      'deleteReports': ?deleteReports,
      'exportConfig': ?pulumi.Input.mapOptionalInputValue<ReportGroupExportConfig, Map<String, dynamic>>(exportConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ReportGroupState.fromMap(Map<String, dynamic> map) {
    return ReportGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteReports: (() { final guardedValue = map['deleteReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportConfig: (() { final guardedValue = map['exportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportGroupExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
