// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutoscalingPolicyIamPolicy.
class GetAutoscalingPolicyIamPolicyArgs {
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetAutoscalingPolicyIamPolicyArgs({
    this.location,
    required this.policyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyIamPolicyArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
