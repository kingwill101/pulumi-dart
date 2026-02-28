// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_utilization_report_vmmigration_v1alpha1_args_doc}
/// Arguments for getUtilizationReport.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_utilization_report_vmmigration_v1alpha1_args_doc}
class GetUtilizationReportVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String> utilizationReportId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetUtilizationReportVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [utilizationReportId] Required.
  /// [view] Optional.
  GetUtilizationReportVmmigrationV1alpha1Args({
    required String location,
    String? project,
    required String sourceId,
    required String utilizationReportId,
    String? view,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceId = pulumi.Input.asInput<String>(sourceId),
        utilizationReportId = pulumi.Input.asInput<String>(utilizationReportId),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    map['utilizationReportId'] = utilizationReportId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetUtilizationReportVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetUtilizationReportVmmigrationV1alpha1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
      utilizationReportId: map['utilizationReportId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
