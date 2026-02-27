// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFunction.
class GetFunctionArgs4 {
  final Input<String> functionId;
  final Input<String> location;
  final Input<String>? project;

  GetFunctionArgs4({
    required this.functionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionId'] = functionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFunctionArgs4.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs4(
      functionId: Input.asInput<String>(map['functionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
