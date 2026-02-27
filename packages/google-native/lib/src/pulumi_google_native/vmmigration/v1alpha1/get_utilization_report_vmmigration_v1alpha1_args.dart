// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUtilizationReport.
class GetUtilizationReportVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String> utilizationReportId;
  final pulumi.Input<String>? view;

  GetUtilizationReportVmmigrationV1alpha1Args({
    required this.location,
    this.project,
    required this.sourceId,
    required this.utilizationReportId,
    this.view,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
      utilizationReportId:
          pulumi.Input.asInput<String>(map['utilizationReportId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
