// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_membership_configmanagement/feature_membership_configmanagement.dart';
import '../feature_membership_mesh/feature_membership_mesh.dart';
import '../feature_membership_policycontroller/feature_membership_policycontroller.dart';

/// The set of arguments for FeatureMembership.
class FeatureMembershipArgs {
  /// Config Management-specific spec. Structure is documented below.
  final Input<FeatureMembershipConfigmanagement>? configmanagement;

  /// The name of the feature
  final Input<String> feature;

  /// The location of the feature
  final Input<String> location;

  /// The name of the membership
  final Input<String> membership;

  /// The location of the membership, for example, "us-central1". Default is "global".
  final Input<String>? membershipLocation;

  /// Service mesh specific spec. Structure is documented below.
  final Input<FeatureMembershipMesh>? mesh;

  /// Policy Controller-specific spec. Structure is documented below.
  final Input<FeatureMembershipPolicycontroller>? policycontroller;

  /// The project of the feature
  final Input<String>? project;

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
      map['configmanagement'] = Input.mapOptionalInputValue<
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
      map['mesh'] = Input.mapOptionalInputValue<FeatureMembershipMesh,
          Map<String, dynamic>>(meshValue, (value) => value.toMap());
    }
    final policycontrollerValue = policycontroller;
    if (policycontrollerValue != null) {
      map['policycontroller'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<FeatureMembershipConfigmanagement>(
              map['configmanagement']),
      feature: Input.asInput<String>(map['feature']),
      location: Input.asInput<String>(map['location']),
      membership: Input.asInput<String>(map['membership']),
      membershipLocation:
          Input.asOptionalInput<String>(map['membershipLocation']),
      mesh: Input.asOptionalInput<FeatureMembershipMesh>(map['mesh']),
      policycontroller:
          Input.asOptionalInput<FeatureMembershipPolicycontroller>(
              map['policycontroller']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
