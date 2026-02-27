// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEdgeCacheOriginIamPolicy.
class GetEdgeCacheOriginIamPolicyArgs {
  final Input<String> edgeCacheOriginId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetEdgeCacheOriginIamPolicyArgs({
    required this.edgeCacheOriginId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edgeCacheOriginId'] = edgeCacheOriginId;
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

  factory GetEdgeCacheOriginIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheOriginIamPolicyArgs(
      edgeCacheOriginId: Input.asInput<String>(map['edgeCacheOriginId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
