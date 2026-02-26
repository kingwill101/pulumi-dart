// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEntityType.
class GetEntityTypeArgs4 {
  final Input<String> entityTypeId;
  final Input<String>? languageCode;
  final Input<String> location;
  final Input<String>? project;

  GetEntityTypeArgs4({
    required this.entityTypeId,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntityTypeArgs4.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeArgs4(
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
