// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMembershipBinding.
class GetMembershipBindingArgs {
  /// The location for the GKE Hub Membership Binding.
  /// Currently only `global` is supported.
  final Input<String> location;

  /// The ID of the membership binding.
  final Input<String> membershipBindingId;

  /// The ID of the membership that this binding applies to.
  final Input<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      membershipBindingId: Input.asInput<String>(map['membershipBindingId']),
      membershipId: Input.asInput<String>(map['membershipId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
