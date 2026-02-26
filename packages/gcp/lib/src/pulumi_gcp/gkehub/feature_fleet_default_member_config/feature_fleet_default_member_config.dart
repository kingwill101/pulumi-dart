// ignore_for_file: unused_element, unnecessary_cast

import '../feature_fleet_default_member_config_configmanagement/feature_fleet_default_member_config_configmanagement.dart';
import '../feature_fleet_default_member_config_mesh/feature_fleet_default_member_config_mesh.dart';
import '../feature_fleet_default_member_config_policycontroller/feature_fleet_default_member_config_policycontroller.dart';

class FeatureFleetDefaultMemberConfig {
  /// Config Management spec
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigConfigmanagement? configmanagement;

  /// Service Mesh spec
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigMesh? mesh;

  /// Policy Controller spec
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontroller? policycontroller;

  FeatureFleetDefaultMemberConfig({
    this.configmanagement,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configmanagementValue = configmanagement;
    if (configmanagementValue != null) {
      map['configmanagement'] = configmanagementValue.toMap();
    }
    final meshValue = mesh;
    if (meshValue != null) {
      map['mesh'] = meshValue.toMap();
    }
    final policycontrollerValue = policycontroller;
    if (policycontrollerValue != null) {
      map['policycontroller'] = policycontrollerValue.toMap();
    }
    return map;
  }

  factory FeatureFleetDefaultMemberConfig.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfig(
      configmanagement: map['configmanagement'] == null
          ? null
          : FeatureFleetDefaultMemberConfigConfigmanagement.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>()),
      mesh: map['mesh'] == null
          ? null
          : FeatureFleetDefaultMemberConfigMesh.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: map['policycontroller'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontroller.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
