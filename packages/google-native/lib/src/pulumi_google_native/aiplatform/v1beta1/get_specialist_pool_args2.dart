// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSpecialistPool.
class GetSpecialistPoolArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> specialistPoolId;

  GetSpecialistPoolArgs2({
    required this.location,
    this.project,
    required this.specialistPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specialistPoolId'] = specialistPoolId;
    return map;
  }

  factory GetSpecialistPoolArgs2.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      specialistPoolId: Input.asInput<String>(map['specialistPoolId']),
    );
  }
}
