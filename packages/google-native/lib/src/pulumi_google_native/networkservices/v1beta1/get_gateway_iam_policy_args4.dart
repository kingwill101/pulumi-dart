// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGatewayIamPolicy.
class GetGatewayIamPolicyArgs4 {
  final Input<String> gatewayId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetGatewayIamPolicyArgs4({
    required this.gatewayId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewayId'] = gatewayId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGatewayIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetGatewayIamPolicyArgs4(
      gatewayId: Input.asInput<String>(map['gatewayId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
