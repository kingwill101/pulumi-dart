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
  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  ReportGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? created,
    pulumi.Output<bool>? deleteReports,
    pulumi.Output<ReportGroupExportConfig>? exportConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      created = pulumi.Input.asOptionalInput<String>(created),
      deleteReports = pulumi.Input.asOptionalInput<bool>(deleteReports),
      exportConfig = pulumi.Input.asOptionalInput<ReportGroupExportConfig>(exportConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      deleteReports: map['deleteReports'] == null ? null : pulumi.Output.create<bool>(map['deleteReports'] as bool),
      exportConfig: map['exportConfig'] == null ? null : pulumi.Output.create<ReportGroupExportConfig>(ReportGroupExportConfig.fromMap((map['exportConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

