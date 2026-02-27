// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPeeringIamPolicy.
class GetPeeringIamPolicyManagedidentitiesV1alpha1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  GetPeeringIamPolicyManagedidentitiesV1alpha1Args({
    this.optionsRequestedPolicyVersion,
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['peeringId'] = peeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPeeringIamPolicyManagedidentitiesV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPeeringIamPolicyManagedidentitiesV1alpha1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      peeringId: pulumi.Input.asInput<String>(map['peeringId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
