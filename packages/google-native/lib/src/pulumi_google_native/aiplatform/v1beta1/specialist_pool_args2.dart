// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for SpecialistPool.
class SpecialistPoolArgs2 {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final Input<String> displayName;
  final Input<String>? location;

  /// The resource name of the SpecialistPool.
  final Input<String>? name;
  final Input<String>? project;

  /// The email addresses of the managers in the SpecialistPool.
  final Input<List<String>>? specialistManagerEmails;

  /// The email addresses of workers in the SpecialistPool.
  final Input<List<String>>? specialistWorkerEmails;

  SpecialistPoolArgs2({
    required this.displayName,
    this.location,
    this.name,
    this.project,
    this.specialistManagerEmails,
    this.specialistWorkerEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specialistManagerEmailsValue = specialistManagerEmails;
    if (specialistManagerEmailsValue != null) {
      map['specialistManagerEmails'] = specialistManagerEmailsValue;
    }
    final specialistWorkerEmailsValue = specialistWorkerEmails;
    if (specialistWorkerEmailsValue != null) {
      map['specialistWorkerEmails'] = specialistWorkerEmailsValue;
    }
    return map;
  }

  factory SpecialistPoolArgs2.fromMap(Map<String, dynamic> map) {
    return SpecialistPoolArgs2(
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      specialistManagerEmails:
          Input.asOptionalInput<List<String>>(map['specialistManagerEmails']),
      specialistWorkerEmails:
          Input.asOptionalInput<List<String>>(map['specialistWorkerEmails']),
    );
  }
}
