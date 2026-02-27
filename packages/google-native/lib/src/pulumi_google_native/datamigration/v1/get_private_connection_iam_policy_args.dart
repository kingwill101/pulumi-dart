// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPrivateConnectionIamPolicy.
class GetPrivateConnectionIamPolicyArgs {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> privateConnectionId;
  final Input<String>? project;

  GetPrivateConnectionIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    required this.privateConnectionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
