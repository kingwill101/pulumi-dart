// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getControl.
class GetControlArgs3 {
  final Input<String> catalogId;
  final Input<String> controlId;
  final Input<String> location;
  final Input<String>? project;

  GetControlArgs3({
    required this.catalogId,
    required this.controlId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['controlId'] = controlId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetControlArgs3.fromMap(Map<String, dynamic> map) {
    return GetControlArgs3(
      catalogId: Input.asInput<String>(map['catalogId']),
      controlId: Input.asInput<String>(map['controlId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
