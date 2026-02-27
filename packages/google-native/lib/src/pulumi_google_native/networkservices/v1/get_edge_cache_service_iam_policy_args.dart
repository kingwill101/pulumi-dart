// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEdgeCacheServiceIamPolicy.
class GetEdgeCacheServiceIamPolicyArgs {
  final pulumi.Input<String> edgeCacheServiceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetEdgeCacheServiceIamPolicyArgs({
    required this.edgeCacheServiceId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edgeCacheServiceId'] = edgeCacheServiceId;
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

  factory GetEdgeCacheServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheServiceIamPolicyArgs(
      edgeCacheServiceId:
          pulumi.Input.asInput<String>(map['edgeCacheServiceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
