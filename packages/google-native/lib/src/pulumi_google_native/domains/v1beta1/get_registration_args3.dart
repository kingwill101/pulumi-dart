// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegistration.
class GetRegistrationArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> registrationId;

  GetRegistrationArgs3({
    required this.location,
    this.project,
    required this.registrationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registrationId'] = registrationId;
    return map;
  }

  factory GetRegistrationArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegistrationArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      registrationId: Input.asInput<String>(map['registrationId']),
    );
  }
}
