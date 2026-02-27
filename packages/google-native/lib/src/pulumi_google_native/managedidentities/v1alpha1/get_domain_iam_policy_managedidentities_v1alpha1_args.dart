// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomainIamPolicy.
class GetDomainIamPolicyManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetDomainIamPolicyManagedidentitiesV1alpha1Args({
    required this.domainId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
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

  factory GetDomainIamPolicyManagedidentitiesV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDomainIamPolicyManagedidentitiesV1alpha1Args(
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
