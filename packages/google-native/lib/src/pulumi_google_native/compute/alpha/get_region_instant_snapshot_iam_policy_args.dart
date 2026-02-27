// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionInstantSnapshotIamPolicy.
class GetRegionInstantSnapshotIamPolicyArgs {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> region;
  final Input<String> resource;

  GetRegionInstantSnapshotIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.region,
    required this.resource,
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
    map['region'] = region;
    map['resource'] = resource;
    return map;
  }

  factory GetRegionInstantSnapshotIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstantSnapshotIamPolicyArgs(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}
