// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSpecialistPool.
class GetSpecialistPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specialistPoolId;

  GetSpecialistPoolArgs({
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

  factory GetSpecialistPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      specialistPoolId: pulumi.Input.asInput<String>(map['specialistPoolId']),
    );
  }
}
