// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1_get_registration_args_doc}
/// Arguments for getRegistration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1_get_registration_args_doc}
class GetRegistrationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [registrationId] Required.
  GetRegistrationArgs({
    required String location,
    String? project,
    required String registrationId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        registrationId = pulumi.Input.asInput<String>(registrationId);

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

  factory GetRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      registrationId: map['registrationId'] as String,
    );
  }
}
