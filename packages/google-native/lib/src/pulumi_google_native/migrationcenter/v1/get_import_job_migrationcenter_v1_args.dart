// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImportJob.
class GetImportJobMigrationcenterV1Args {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetImportJobMigrationcenterV1Args({
    required this.importJobId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importJobId'] = importJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetImportJobMigrationcenterV1Args.fromMap(Map<String, dynamic> map) {
    return GetImportJobMigrationcenterV1Args(
      importJobId: pulumi.Input.asInput<String>(map['importJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
