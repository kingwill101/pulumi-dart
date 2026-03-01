// ignore_for_file: unused_element, unnecessary_cast

import 'post_build_definition.dart';

/// The Kustomization defining how to reconcile the artifact pulled by the source type on the cluster.
class KustomizationDefinition {
  /// Specifies other Kustomizations that this Kustomization depends on. This Kustomization will not reconcile until all dependencies have completed their reconciliation.
  final List<String>? dependsOn;
  /// Enable/disable re-creating Kubernetes resources on the cluster when patching fails due to an immutable field change.
  final bool? force;
  /// The path in the source reference to reconcile on the cluster.
  final String? path;
  /// Used for variable substitution for this Kustomization after kustomize build.
  final PostBuildDefinition? postBuild;
  /// Enable/disable garbage collections of Kubernetes objects created by this Kustomization.
  final bool? prune;
  /// The interval at which to re-reconcile the Kustomization on the cluster in the event of failure on reconciliation.
  final double? retryIntervalInSeconds;
  /// The interval at which to re-reconcile the Kustomization on the cluster.
  final double? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the Kustomization on the cluster.
  final double? timeoutInSeconds;
  /// Enable/disable health check for all Kubernetes objects created by this Kustomization.
  final bool? wait;

  /// Creates a new [KustomizationDefinition].
  /// [dependsOn] Specifies other Kustomizations that this Kustomization depends on. This Kustomization will not reconcile until all dependencies have completed their reconciliation.
  /// [force] Enable/disable re-creating Kubernetes resources on the cluster when patching fails due to an immutable field change.
  /// [path] The path in the source reference to reconcile on the cluster.
  /// [postBuild] Used for variable substitution for this Kustomization after kustomize build.
  /// [prune] Enable/disable garbage collections of Kubernetes objects created by this Kustomization.
  /// [retryIntervalInSeconds] The interval at which to re-reconcile the Kustomization on the cluster in the event of failure on reconciliation.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the Kustomization on the cluster.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the Kustomization on the cluster.
  /// [wait] Enable/disable health check for all Kubernetes objects created by this Kustomization.
  KustomizationDefinition({
    this.dependsOn,
    this.force,
    this.path,
    this.postBuild,
    this.prune,
    this.retryIntervalInSeconds,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn,
      'force': ?force,
      'path': ?path,
      'postBuild': ?postBuild == null ? null : postBuild!.toMap(),
      'prune': ?prune,
      'retryIntervalInSeconds': ?retryIntervalInSeconds,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'wait': ?wait,
    };
  }

  factory KustomizationDefinition.fromMap(Map<String, dynamic> map) {
    return KustomizationDefinition(
      dependsOn: map['dependsOn'] == null ? null : (map['dependsOn'] as List).cast<String>(),
      force: map['force'] == null ? null : map['force'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      postBuild: map['postBuild'] == null ? null : PostBuildDefinition.fromMap((map['postBuild'] as Map).cast<String, dynamic>()),
      prune: map['prune'] == null ? null : map['prune'] as bool,
      retryIntervalInSeconds: map['retryIntervalInSeconds'] == null ? null : map['retryIntervalInSeconds'] as double,
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as double,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as double,
      wait: map['wait'] == null ? null : map['wait'] as bool,
    );
  }
}

