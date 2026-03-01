// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement.dart';
import 'feature_membership_mesh.dart';
import 'feature_membership_policycontroller.dart';

/// {@template pulumi_gkehub_feature_membership_feature_membership_args_doc}
/// The set of arguments for FeatureMembership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_feature_membership_feature_membership_args_doc}
class FeatureMembershipArgs {
  /// Config Management-specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipConfigmanagement>? configmanagement;

  /// The name of the feature
  final pulumi.Input<String> feature;

  /// The location of the feature
  final pulumi.Input<String> location;

  /// The name of the membership
  final pulumi.Input<String> membership;

  /// The location of the membership, for example, "us-central1". Default is "global".
  final pulumi.Input<String>? membershipLocation;

  /// Service mesh specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipMesh>? mesh;

  /// Policy Controller-specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipPolicycontroller>? policycontroller;

  /// The project of the feature
  final pulumi.Input<String>? project;

  /// Creates a new [FeatureMembershipArgs].
  /// [configmanagement] Config Management-specific spec. Structure is documented below.
  /// [feature] The name of the feature
  /// [location] The location of the feature
  /// [membership] The name of the membership
  /// [membershipLocation] The location of the membership, for example, "us-central1". Default is "global".
  /// [mesh] Service mesh specific spec. Structure is documented below.
  /// [policycontroller] Policy Controller-specific spec. Structure is documented below.
  /// [project] The project of the feature
  FeatureMembershipArgs({
    FeatureMembershipConfigmanagement? configmanagement,
    required String feature,
    required String location,
    required String membership,
    String? membershipLocation,
    FeatureMembershipMesh? mesh,
    FeatureMembershipPolicycontroller? policycontroller,
    String? project,
  }) : configmanagement =
           pulumi.Input.asOptionalInput<FeatureMembershipConfigmanagement>(
             configmanagement,
           ),
       feature = pulumi.Input.asInput<String>(feature),
       location = pulumi.Input.asInput<String>(location),
       membership = pulumi.Input.asInput<String>(membership),
       membershipLocation = pulumi.Input.asOptionalInput<String>(
         membershipLocation,
       ),
       mesh = pulumi.Input.asOptionalInput<FeatureMembershipMesh>(mesh),
       policycontroller =
           pulumi.Input.asOptionalInput<FeatureMembershipPolicycontroller>(
             policycontroller,
           ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureMembershipConfigmanagement,
            Map<String, dynamic>
          >(configmanagement, (value) => value.toMap()),
      'feature': feature,
      'location': location,
      'membership': membership,
      'membershipLocation': ?membershipLocation,
      'mesh':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureMembershipMesh,
            Map<String, dynamic>
          >(mesh, (value) => value.toMap()),
      'policycontroller':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureMembershipPolicycontroller,
            Map<String, dynamic>
          >(policycontroller, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory FeatureMembershipArgs.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipArgs(
      configmanagement: map['configmanagement'] == null
          ? null
          : FeatureMembershipConfigmanagement.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>(),
            ),
      feature: map['feature'] as String,
      location: map['location'] as String,
      membership: map['membership'] as String,
      membershipLocation: map['membershipLocation'] == null
          ? null
          : map['membershipLocation'] as String,
      mesh: map['mesh'] == null
          ? null
          : FeatureMembershipMesh.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>(),
            ),
      policycontroller: map['policycontroller'] == null
          ? null
          : FeatureMembershipPolicycontroller.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
