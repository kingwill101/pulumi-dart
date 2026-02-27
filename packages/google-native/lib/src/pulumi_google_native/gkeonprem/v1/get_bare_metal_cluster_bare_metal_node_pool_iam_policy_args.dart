// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBareMetalClusterBareMetalNodePoolIamPolicy.
class GetBareMetalClusterBareMetalNodePoolIamPolicyArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

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
      bareMetalClusterId:
          pulumi.Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalNodePoolId:
          pulumi.Input.asInput<String>(map['bareMetalNodePoolId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
