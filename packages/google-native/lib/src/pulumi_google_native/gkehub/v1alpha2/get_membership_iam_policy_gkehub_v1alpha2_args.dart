// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembershipIamPolicy.
class GetMembershipIamPolicyGkehubV1alpha2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetMembershipIamPolicyGkehubV1alpha2Args({
    required this.location,
    required this.membershipId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipId'] = membershipId;
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

  factory GetMembershipIamPolicyGkehubV1alpha2Args.fromMap(
      Map<String, dynamic> map) {
    return GetMembershipIamPolicyGkehubV1alpha2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
