// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../feature_membership_configmanagement/feature_membership_configmanagement.dart';
import '../feature_membership_mesh/feature_membership_mesh.dart';
import '../feature_membership_policycontroller/feature_membership_policycontroller.dart';

/// The set of arguments for FeatureMembership.
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

  FeatureMembershipArgs({
    this.configmanagement,
    required this.feature,
    required this.location,
    required this.membership,
    this.membershipLocation,
    this.mesh,
    this.policycontroller,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configmanagementValue = configmanagement;
    if (configmanagementValue != null) {
      map['configmanagement'] = pulumi.Input.mapOptionalInputValue<
              FeatureMembershipConfigmanagement, Map<String, dynamic>>(
          configmanagementValue, (value) => value.toMap());
    }
    map['feature'] = feature;
    map['location'] = location;
    map['membership'] = membership;
    final membershipLocationValue = membershipLocation;
    if (membershipLocationValue != null) {
      map['membershipLocation'] = membershipLocationValue;
    }
    final meshValue = mesh;
    if (meshValue != null) {
      map['mesh'] = pulumi.Input.mapOptionalInputValue<FeatureMembershipMesh,
          Map<String, dynamic>>(meshValue, (value) => value.toMap());
    }
    final policycontrollerValue = policycontroller;
    if (policycontrollerValue != null) {
      map['policycontroller'] = pulumi.Input.mapOptionalInputValue<
              FeatureMembershipPolicycontroller, Map<String, dynamic>>(
          policycontrollerValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FeatureMembershipArgs.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipArgs(
      configmanagement:
          pulumi.Input.asOptionalInput<FeatureMembershipConfigmanagement>(
              map['configmanagement']),
      feature: pulumi.Input.asInput<String>(map['feature']),
      location: pulumi.Input.asInput<String>(map['location']),
      membership: pulumi.Input.asInput<String>(map['membership']),
      membershipLocation:
          pulumi.Input.asOptionalInput<String>(map['membershipLocation']),
      mesh: pulumi.Input.asOptionalInput<FeatureMembershipMesh>(map['mesh']),
      policycontroller:
          pulumi.Input.asOptionalInput<FeatureMembershipPolicycontroller>(
              map['policycontroller']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
