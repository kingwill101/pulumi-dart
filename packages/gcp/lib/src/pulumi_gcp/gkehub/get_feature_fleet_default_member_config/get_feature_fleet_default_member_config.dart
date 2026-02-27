// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_fleet_default_member_config_configmanagement/get_feature_fleet_default_member_config_configmanagement.dart';
import '../get_feature_fleet_default_member_config_mesh/get_feature_fleet_default_member_config_mesh.dart';
import '../get_feature_fleet_default_member_config_policycontroller/get_feature_fleet_default_member_config_policycontroller.dart';

class GetFeatureFleetDefaultMemberConfig {
  /// Config Management spec
  final List<GetFeatureFleetDefaultMemberConfigConfigmanagement>
      configmanagements;

  /// Service Mesh spec
  final List<GetFeatureFleetDefaultMemberConfigMesh> meshes;

  /// Policy Controller spec
  final List<GetFeatureFleetDefaultMemberConfigPolicycontroller>
      policycontrollers;

  GetFeatureFleetDefaultMemberConfig({
    required this.configmanagements,
    required this.meshes,
    required this.policycontrollers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configmanagements'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigConfigmanagement,
        Map<String, dynamic>>(configmanagements, (value) => value.toMap());
    map['meshes'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigMesh,
        Map<String, dynamic>>(meshes, (value) => value.toMap());
    map['policycontrollers'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontroller,
        Map<String, dynamic>>(policycontrollers, (value) => value.toMap());
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfig(
      configmanagements: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigConfigmanagement>(
          map['configmanagements'],
          (value) => GetFeatureFleetDefaultMemberConfigConfigmanagement.fromMap(
              (value as Map).cast<String, dynamic>())),
      meshes: pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigMesh>(
          map['meshes'],
          (value) => GetFeatureFleetDefaultMemberConfigMesh.fromMap(
              (value as Map).cast<String, dynamic>())),
      policycontrollers: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontroller>(
          map['policycontrollers'],
          (value) => GetFeatureFleetDefaultMemberConfigPolicycontroller.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
