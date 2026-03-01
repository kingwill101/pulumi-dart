// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_version_readiness_response.dart';

/// Kubernetes Patch Version profile
class KubernetesPatchVersionsResponse {
  /// Indicates whether the kubernetes version image is ready or not
  final List<KubernetesVersionReadinessResponse>? readiness;
  /// Possible upgrade paths for given patch version
  final List<String>? upgrades;

  /// Creates a new [KubernetesPatchVersionsResponse].
  /// [readiness] Indicates whether the kubernetes version image is ready or not
  /// [upgrades] Possible upgrade paths for given patch version
  KubernetesPatchVersionsResponse({
    this.readiness,
    this.upgrades,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readiness': ?readiness == null ? null : pulumi.Input.encodeList<KubernetesVersionReadinessResponse, Map<String, dynamic>>(readiness!, (value) => value.toMap()),
      'upgrades': ?upgrades,
    };
  }

  factory KubernetesPatchVersionsResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesPatchVersionsResponse(
      readiness: map['readiness'] == null ? null : pulumi.Input.decodeList<KubernetesVersionReadinessResponse>(map['readiness'], (value) => KubernetesVersionReadinessResponse.fromMap((value as Map).cast<String, dynamic>())),
      upgrades: map['upgrades'] == null ? null : (map['upgrades'] as List).cast<String>(),
    );
  }
}

