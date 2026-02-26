// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEdgeCacheServiceIamPolicy.
class GetEdgeCacheServiceIamPolicyArgs {
  final Input<String> edgeCacheServiceId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

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
      edgeCacheServiceId: Input.asInput<String>(map['edgeCacheServiceId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
