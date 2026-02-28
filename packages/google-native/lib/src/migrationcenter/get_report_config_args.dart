// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_report_config_args_doc}
/// Arguments for getReportConfig.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_report_config_args_doc}
class GetReportConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;

  /// Creates a new [GetReportConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [reportConfigId] Required.
  GetReportConfigArgs({
    required String location,
    String? project,
    required String reportConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        reportConfigId = pulumi.Input.asInput<String>(reportConfigId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reportConfigId'] = reportConfigId;
    return map;
  }

  factory GetReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetReportConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reportConfigId: map['reportConfigId'] as String,
    );
  }
}
