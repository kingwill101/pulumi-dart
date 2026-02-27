// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_spec_clusterupgrade/get_feature_spec_clusterupgrade.dart';
import '../get_feature_spec_fleetobservability/get_feature_spec_fleetobservability.dart';
import '../get_feature_spec_multiclusteringress/get_feature_spec_multiclusteringress.dart';
import '../get_feature_spec_rbacrolebindingactuation/get_feature_spec_rbacrolebindingactuation.dart';

class GetFeatureSpec {
  /// Clusterupgrade feature spec.
  final List<GetFeatureSpecClusterupgrade> clusterupgrades;

  /// Fleet Observability feature spec.
  final List<GetFeatureSpecFleetobservability> fleetobservabilities;

  /// Multicluster Ingress-specific spec.
  final List<GetFeatureSpecMulticlusteringress> multiclusteringresses;

  /// RBACRolebinding Actuation feature spec.
  final List<GetFeatureSpecRbacrolebindingactuation> rbacrolebindingactuations;

  GetFeatureSpec({
    required this.clusterupgrades,
    required this.fleetobservabilities,
    required this.multiclusteringresses,
    required this.rbacrolebindingactuations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterupgrades'] = pulumi.Input.encodeList<
        GetFeatureSpecClusterupgrade,
        Map<String, dynamic>>(clusterupgrades, (value) => value.toMap());
    map['fleetobservabilities'] = pulumi.Input.encodeList<
        GetFeatureSpecFleetobservability,
        Map<String, dynamic>>(fleetobservabilities, (value) => value.toMap());
    map['multiclusteringresses'] = pulumi.Input.encodeList<
        GetFeatureSpecMulticlusteringress,
        Map<String, dynamic>>(multiclusteringresses, (value) => value.toMap());
    map['rbacrolebindingactuations'] = pulumi.Input.encodeList<
            GetFeatureSpecRbacrolebindingactuation, Map<String, dynamic>>(
        rbacrolebindingactuations, (value) => value.toMap());
    return map;
  }

  factory GetFeatureSpec.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpec(
      clusterupgrades: pulumi.Input.decodeList<GetFeatureSpecClusterupgrade>(
          map['clusterupgrades'],
          (value) => GetFeatureSpecClusterupgrade.fromMap(
              (value as Map).cast<String, dynamic>())),
      fleetobservabilities:
          pulumi.Input.decodeList<GetFeatureSpecFleetobservability>(
              map['fleetobservabilities'],
              (value) => GetFeatureSpecFleetobservability.fromMap(
                  (value as Map).cast<String, dynamic>())),
      multiclusteringresses:
          pulumi.Input.decodeList<GetFeatureSpecMulticlusteringress>(
              map['multiclusteringresses'],
              (value) => GetFeatureSpecMulticlusteringress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rbacrolebindingactuations:
          pulumi.Input.decodeList<GetFeatureSpecRbacrolebindingactuation>(
              map['rbacrolebindingactuations'],
              (value) => GetFeatureSpecRbacrolebindingactuation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
