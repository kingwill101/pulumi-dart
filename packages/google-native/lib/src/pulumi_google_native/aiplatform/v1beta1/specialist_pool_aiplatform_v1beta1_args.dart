// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SpecialistPool.
class SpecialistPoolAiplatformV1beta1Args {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the SpecialistPool.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The email addresses of the managers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistManagerEmails;

  /// The email addresses of workers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistWorkerEmails;

  SpecialistPoolAiplatformV1beta1Args({
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

  factory SpecialistPoolAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return SpecialistPoolAiplatformV1beta1Args(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      specialistManagerEmails: pulumi.Input.asOptionalInput<List<String>>(
          map['specialistManagerEmails']),
      specialistWorkerEmails: pulumi.Input.asOptionalInput<List<String>>(
          map['specialistWorkerEmails']),
    );
  }
}
