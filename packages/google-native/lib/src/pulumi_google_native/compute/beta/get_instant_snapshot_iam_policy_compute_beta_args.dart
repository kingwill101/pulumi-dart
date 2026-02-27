// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstantSnapshotIamPolicy.
class GetInstantSnapshotIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> zone;

  GetInstantSnapshotIamPolicyComputeBetaArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.resource,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resource'] = resource;
    map['zone'] = zone;
    return map;
  }

  factory GetInstantSnapshotIamPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInstantSnapshotIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resource: pulumi.Input.asInput<String>(map['resource']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
