// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_report_args_doc}
/// Arguments for getReport.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_report_args_doc}
class GetReportArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;
  final pulumi.Input<String> reportId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetReportArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [reportConfigId] Required.
  /// [reportId] Required.
  /// [view] Optional.
  GetReportArgs({
    required String location,
    String? project,
    required String reportConfigId,
    required String reportId,
    String? view,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       reportConfigId = pulumi.Input.asInput<String>(reportConfigId),
       reportId = pulumi.Input.asInput<String>(reportId),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'reportConfigId': reportConfigId,
      'reportId': reportId,
      'view': ?view,
    };
  }

  factory GetReportArgs.fromMap(Map<String, dynamic> map) {
    return GetReportArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reportConfigId: map['reportConfigId'] as String,
      reportId: map['reportId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
