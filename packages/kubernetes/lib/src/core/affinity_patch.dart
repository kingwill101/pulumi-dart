// ignore_for_file: unused_element, unnecessary_cast

import 'node_affinity_patch.dart';
import 'pod_affinity_patch.dart';
import 'pod_anti_affinity_patch.dart';

/// Affinity is a group of affinity scheduling rules.
class AffinityPatch {
  /// Describes node affinity scheduling rules for the pod.
  final NodeAffinityPatch? nodeAffinity;
  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final PodAffinityPatch? podAffinity;
  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final PodAntiAffinityPatch? podAntiAffinity;

  /// Creates a new [AffinityPatch].
  /// [nodeAffinity] Describes node affinity scheduling rules for the pod.
  /// [podAffinity] Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  /// [podAntiAffinity] Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  AffinityPatch({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinity': ?nodeAffinity == null ? null : nodeAffinity!.toMap(),
      'podAffinity': ?podAffinity == null ? null : podAffinity!.toMap(),
      'podAntiAffinity': ?podAntiAffinity == null ? null : podAntiAffinity!.toMap(),
    };
  }

  factory AffinityPatch.fromMap(Map<String, dynamic> map) {
    return AffinityPatch(
      nodeAffinity: map['nodeAffinity'] == null ? null : NodeAffinityPatch.fromMap((map['nodeAffinity'] as Map).cast<String, dynamic>()),
      podAffinity: map['podAffinity'] == null ? null : PodAffinityPatch.fromMap((map['podAffinity'] as Map).cast<String, dynamic>()),
      podAntiAffinity: map['podAntiAffinity'] == null ? null : PodAntiAffinityPatch.fromMap((map['podAntiAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}

