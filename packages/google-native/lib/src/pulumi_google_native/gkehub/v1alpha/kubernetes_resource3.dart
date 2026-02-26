// ignore_for_file: unused_element, unnecessary_cast

import 'resource_options_type3.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResource3 {
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final String? membershipCrManifest;

  /// Optional. Options for Kubernetes resource generation.
  final ResourceOptionsType3? resourceOptions;

  KubernetesResource3({
    this.membershipCrManifest,
    this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final membershipCrManifestValue = membershipCrManifest;
    if (membershipCrManifestValue != null) {
      map['membershipCrManifest'] = membershipCrManifestValue;
    }
    final resourceOptionsValue = resourceOptions;
    if (resourceOptionsValue != null) {
      map['resourceOptions'] = resourceOptionsValue.toMap();
    }
    return map;
  }

  factory KubernetesResource3.fromMap(Map<String, dynamic> map) {
    return KubernetesResource3(
      membershipCrManifest: map['membershipCrManifest'] == null
          ? null
          : map['membershipCrManifest'] as String,
      resourceOptions: map['resourceOptions'] == null
          ? null
          : ResourceOptionsType3.fromMap(
              (map['resourceOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
