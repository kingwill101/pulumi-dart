// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MembershipBinding.
class MembershipBindingArgs {
  /// Labels for this Membership binding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location of the membership
  final Input<String> location;

  /// The client-provided identifier of the membership binding.
  final Input<String> membershipBindingId;

  /// Id of the membership
  final Input<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A Workspace resource name in the format
  /// `projects/*/locations/*/scopes/*`.
  final Input<String> scope;

  MembershipBindingArgs({
    this.labels,
    required this.location,
    required this.membershipBindingId,
    required this.membershipId,
    this.project,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['membershipBindingId'] = membershipBindingId;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scope'] = scope;
    return map;
  }

  factory MembershipBindingArgs.fromMap(Map<String, dynamic> map) {
    return MembershipBindingArgs(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      membershipBindingId: Input.asInput<String>(map['membershipBindingId']),
      membershipId: Input.asInput<String>(map['membershipId']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asInput<String>(map['scope']),
    );
  }
}
