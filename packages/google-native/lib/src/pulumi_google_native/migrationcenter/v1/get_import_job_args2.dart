// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImportJob.
class GetImportJobArgs2 {
  final Input<String> importJobId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetImportJobArgs2({
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

  factory GetImportJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs2(
      importJobId: Input.asInput<String>(map['importJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
