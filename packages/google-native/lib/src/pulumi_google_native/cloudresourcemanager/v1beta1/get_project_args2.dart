// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProject.
class GetProjectArgs2 {
  final Input<String>? project;

  GetProjectArgs2({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProjectArgs2.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs2(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
