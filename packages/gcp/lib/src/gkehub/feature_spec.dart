// ignore_for_file: unused_element, unnecessary_cast

import 'feature_spec_clusterupgrade.dart';
import 'feature_spec_fleetobservability.dart';
import 'feature_spec_multiclusteringress.dart';
import 'feature_spec_rbacrolebindingactuation.dart';

class FeatureSpec {
  /// Clusterupgrade feature spec.
  /// Structure is documented below.
  final FeatureSpecClusterupgrade? clusterupgrade;

  /// Fleet Observability feature spec.
  /// Structure is documented below.
  final FeatureSpecFleetobservability? fleetobservability;

  /// Multicluster Ingress-specific spec.
  /// Structure is documented below.
  final FeatureSpecMulticlusteringress? multiclusteringress;

  /// RBACRolebinding Actuation feature spec.
  /// Structure is documented below.
  final FeatureSpecRbacrolebindingactuation? rbacrolebindingactuation;

  /// Creates a new [FeatureSpec].
  /// [clusterupgrade] Clusterupgrade feature spec.
  /// [fleetobservability] Fleet Observability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [rbacrolebindingactuation] RBACRolebinding Actuation feature spec.
  FeatureSpec({
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
    this.rbacrolebindingactuation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterupgradeValue = clusterupgrade;
    if (clusterupgradeValue != null) {
      map['clusterupgrade'] = clusterupgradeValue.toMap();
    }
    final fleetobservabilityValue = fleetobservability;
    if (fleetobservabilityValue != null) {
      map['fleetobservability'] = fleetobservabilityValue.toMap();
    }
    final multiclusteringressValue = multiclusteringress;
    if (multiclusteringressValue != null) {
      map['multiclusteringress'] = multiclusteringressValue.toMap();
    }
    final rbacrolebindingactuationValue = rbacrolebindingactuation;
    if (rbacrolebindingactuationValue != null) {
      map['rbacrolebindingactuation'] = rbacrolebindingactuationValue.toMap();
    }
    return map;
  }

  factory FeatureSpec.fromMap(Map<String, dynamic> map) {
    return FeatureSpec(
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : FeatureSpecClusterupgrade.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FeatureSpecFleetobservability.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : FeatureSpecMulticlusteringress.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
      rbacrolebindingactuation: map['rbacrolebindingactuation'] == null
          ? null
          : FeatureSpecRbacrolebindingactuation.fromMap(
              (map['rbacrolebindingactuation'] as Map).cast<String, dynamic>()),
    );
  }
}
