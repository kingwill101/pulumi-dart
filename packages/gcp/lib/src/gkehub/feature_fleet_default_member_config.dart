// ignore_for_file: unused_element, unnecessary_cast

import 'feature_fleet_default_member_config_configmanagement.dart';
import 'feature_fleet_default_member_config_mesh.dart';
import 'feature_fleet_default_member_config_policycontroller.dart';

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

  /// Creates a new [FeatureFleetDefaultMemberConfig].
  /// [configmanagement] Config Management spec
  /// [mesh] Service Mesh spec
  /// [policycontroller] Policy Controller spec
  FeatureFleetDefaultMemberConfig({
    this.configmanagement,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?configmanagement == null
          ? null
          : configmanagement!.toMap(),
      'mesh': ?mesh == null ? null : mesh!.toMap(),
      'policycontroller': ?policycontroller == null
          ? null
          : policycontroller!.toMap(),
    };
  }

  factory FeatureFleetDefaultMemberConfig.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfig(
      configmanagement: map['configmanagement'] == null
          ? null
          : FeatureFleetDefaultMemberConfigConfigmanagement.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>(),
            ),
      mesh: map['mesh'] == null
          ? null
          : FeatureFleetDefaultMemberConfigMesh.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>(),
            ),
      policycontroller: map['policycontroller'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontroller.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
