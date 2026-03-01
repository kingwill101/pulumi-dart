// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_membership_binding_get_membership_binding_args_doc}
/// Arguments for getMembershipBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_membership_binding_get_membership_binding_args_doc}
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

  /// Creates a new [GetMembershipBindingArgs].
  /// [location] The location for the GKE Hub Membership Binding.
  /// [membershipBindingId] The ID of the membership binding.
  /// [membershipId] The ID of the membership that this binding applies to.
  /// [project] The ID of the project in which the resource belongs.
  GetMembershipBindingArgs({
    required String location,
    required String membershipBindingId,
    required String membershipId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       membershipBindingId = pulumi.Input.asInput<String>(membershipBindingId),
       membershipId = pulumi.Input.asInput<String>(membershipId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'membershipBindingId': membershipBindingId,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetMembershipBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingArgs(
      location: map['location'] as String,
      membershipBindingId: map['membershipBindingId'] as String,
      membershipId: map['membershipId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
