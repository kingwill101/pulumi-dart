// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImportJob.
class GetImportJobArgs3 {
  final Input<String> importJobId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetImportJobArgs3({
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

  factory GetImportJobArgs3.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs3(
      importJobId: Input.asInput<String>(map['importJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
