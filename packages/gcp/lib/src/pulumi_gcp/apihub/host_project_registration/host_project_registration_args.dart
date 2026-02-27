// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostProjectRegistration.
class HostProjectRegistrationArgs {
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  final Input<String> gcpProject;

  /// Required. The ID to use for the Host Project Registration, which will become the
  /// final component of the host project registration's resource name. The ID
  /// must be the same as the Google cloud project specified in the
  /// host_project_registration.gcp_project field.
  final Input<String> hostProjectRegistrationId;

  /// Part of `parent`. See documentation of `projectsId`.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  HostProjectRegistrationArgs({
    required this.gcpProject,
    required this.hostProjectRegistrationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpProject'] = gcpProject;
    map['hostProjectRegistrationId'] = hostProjectRegistrationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory HostProjectRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return HostProjectRegistrationArgs(
      gcpProject: Input.asInput<String>(map['gcpProject']),
      hostProjectRegistrationId:
          Input.asInput<String>(map['hostProjectRegistrationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
