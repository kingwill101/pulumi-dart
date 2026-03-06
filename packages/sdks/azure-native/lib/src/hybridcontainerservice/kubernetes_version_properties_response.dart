// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_patch_versions_response.dart';

/// Kubernetes version profile for given major.minor release
class KubernetesVersionPropertiesResponse {
  /// Whether this version is in preview mode.
  final pulumi.Input<bool> isPreview;
  /// Patch versions of a Kubernetes release
  final pulumi.Input<Map<String, KubernetesPatchVersionsResponse>> patchVersions;
  /// major.minor version of Kubernetes release
  final pulumi.Input<String> version;

  /// Creates a new [KubernetesVersionPropertiesResponse].
  /// [isPreview] Whether this version is in preview mode.
  /// [patchVersions] Patch versions of a Kubernetes release
  /// [version] major.minor version of Kubernetes release
  const KubernetesVersionPropertiesResponse({
    required this.isPreview,
    required this.patchVersions,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPreview': isPreview,
      'patchVersions': pulumi.Input.mapInputValue<Map<String, KubernetesPatchVersionsResponse>, Map<String, Map<String, dynamic>>>(patchVersions, (value) => pulumi.Input.encodeMapValues<KubernetesPatchVersionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory KubernetesVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionPropertiesResponse(
      isPreview: pulumi.Input.fromValue(map['isPreview'] as bool),
      patchVersions: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<KubernetesPatchVersionsResponse>(map['patchVersions']!, (value) => KubernetesPatchVersionsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

