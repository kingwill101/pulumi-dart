// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetConnectionIamPolicy.
class GetNetConnectionIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> netConnectionId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      netConnectionId: pulumi.Input.asInput<String>(map['netConnectionId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
