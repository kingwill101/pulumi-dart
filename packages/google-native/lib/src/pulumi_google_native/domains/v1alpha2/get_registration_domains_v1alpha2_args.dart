// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegistration.
class GetRegistrationDomainsV1alpha2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  GetRegistrationDomainsV1alpha2Args({
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

  factory GetRegistrationDomainsV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDomainsV1alpha2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      registrationId: pulumi.Input.asInput<String>(map['registrationId']),
    );
  }
}
