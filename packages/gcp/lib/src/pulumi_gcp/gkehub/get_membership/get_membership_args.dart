// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembership.
class GetMembershipArgs {
  /// The location for the GKE Hub Membership.
  /// Currently only `global` is supported.
  final pulumi.Input<String> location;

  /// The GKE Hub Membership id or GKE Cluster's name.
  final pulumi.Input<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetMembershipArgs({
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

  factory GetMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
