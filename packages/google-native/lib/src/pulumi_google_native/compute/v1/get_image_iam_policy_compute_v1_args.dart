// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImageIamPolicy.
class GetImageIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  GetImageIamPolicyComputeV1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
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
    map['resource'] = resource;
    return map;
  }

  factory GetImageIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetImageIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}
