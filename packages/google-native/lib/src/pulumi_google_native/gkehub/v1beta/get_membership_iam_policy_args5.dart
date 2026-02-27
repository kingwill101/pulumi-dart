// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMembershipIamPolicy.
class GetMembershipIamPolicyArgs5 {
  final Input<String> location;
  final Input<String> membershipId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetMembershipIamPolicyArgs5({
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

  factory GetMembershipIamPolicyArgs5.fromMap(Map<String, dynamic> map) {
    return GetMembershipIamPolicyArgs5(
      location: Input.asInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
