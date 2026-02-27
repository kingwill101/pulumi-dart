// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProject.
class GetProjectArgs3 {
  final Input<String>? project;

  GetProjectArgs3({
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

  factory GetProjectArgs3.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs3(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
