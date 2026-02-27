// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembership.
class GetMembershipGkehubV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  GetMembershipGkehubV1beta1Args({
    required this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMembershipGkehubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMembershipGkehubV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
