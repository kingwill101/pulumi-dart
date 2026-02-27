// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMembership.
class GetMembershipArgs6 {
  final Input<String> location;
  final Input<String> membershipId;
  final Input<String>? project;

  GetMembershipArgs6({
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

  factory GetMembershipArgs6.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs6(
      location: Input.asInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
