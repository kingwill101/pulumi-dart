// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBareMetalClusterBareMetalNodePoolIamPolicy.
class GetBareMetalClusterBareMetalNodePoolIamPolicyArgs {
  final Input<String> bareMetalClusterId;
  final Input<String> bareMetalNodePoolId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs({
    required this.bareMetalClusterId,
    required this.bareMetalNodePoolId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalClusterId'] = bareMetalClusterId;
    map['bareMetalNodePoolId'] = bareMetalNodePoolId;
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

  factory GetBareMetalClusterBareMetalNodePoolIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBareMetalClusterBareMetalNodePoolIamPolicyArgs(
      bareMetalClusterId: Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalNodePoolId: Input.asInput<String>(map['bareMetalNodePoolId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
