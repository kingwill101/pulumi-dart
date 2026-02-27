// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNetConnectionIamPolicy.
class GetNetConnectionIamPolicyArgs {
  final Input<String> location;
  final Input<String> netConnectionId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetNetConnectionIamPolicyArgs({
    required this.location,
    required this.netConnectionId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['netConnectionId'] = netConnectionId;
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

  factory GetNetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetConnectionIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      netConnectionId: Input.asInput<String>(map['netConnectionId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
