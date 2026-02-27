// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegistrationIamPolicy.
class GetRegistrationIamPolicyDomainsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  GetRegistrationIamPolicyDomainsV1beta1Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.registrationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registrationId'] = registrationId;
    return map;
  }

  factory GetRegistrationIamPolicyDomainsV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegistrationIamPolicyDomainsV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      registrationId: pulumi.Input.asInput<String>(map['registrationId']),
    );
  }
}
