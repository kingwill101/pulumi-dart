// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembershipBinding.
class GetMembershipBindingArgs {
  /// The location for the GKE Hub Membership Binding.
  /// Currently only `global` is supported.
  final pulumi.Input<String> location;

  /// The ID of the membership binding.
  final pulumi.Input<String> membershipBindingId;

  /// The ID of the membership that this binding applies to.
  final pulumi.Input<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetMembershipBindingArgs({
    required this.location,
    required this.membershipBindingId,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipBindingId'] = membershipBindingId;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMembershipBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      membershipBindingId:
          pulumi.Input.asInput<String>(map['membershipBindingId']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
