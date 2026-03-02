// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'post_build_definition.dart';

/// The Kustomization defining how to reconcile the artifact pulled by the source type on the cluster.
class KustomizationDefinition {
  /// Specifies other Kustomizations that this Kustomization depends on. This Kustomization will not reconcile until all dependencies have completed their reconciliation.
  final pulumi.Input<List<String>>? dependsOn;
  /// Enable/disable re-creating Kubernetes resources on the cluster when patching fails due to an immutable field change.
  final pulumi.Input<bool>? force;
  /// The path in the source reference to reconcile on the cluster.
  final pulumi.Input<String>? path;
  /// Used for variable substitution for this Kustomization after kustomize build.
  final pulumi.Input<PostBuildDefinition>? postBuild;
  /// Enable/disable garbage collections of Kubernetes objects created by this Kustomization.
  final pulumi.Input<bool>? prune;
  /// The interval at which to re-reconcile the Kustomization on the cluster in the event of failure on reconciliation.
  final pulumi.Input<double>? retryIntervalInSeconds;
  /// The interval at which to re-reconcile the Kustomization on the cluster.
  final pulumi.Input<double>? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the Kustomization on the cluster.
  final pulumi.Input<double>? timeoutInSeconds;
  /// Enable/disable health check for all Kubernetes objects created by this Kustomization.
  final pulumi.Input<bool>? wait;

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
      'postBuild': ?pulumi.Input.mapOptionalInputValue<PostBuildDefinition, Map<String, dynamic>>(postBuild, (value) => value.toMap()),
      'prune': ?prune,
      'retryIntervalInSeconds': ?retryIntervalInSeconds,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'wait': ?wait,
    };
  }

  factory KustomizationDefinition.fromMap(Map<String, dynamic> map) {
    return KustomizationDefinition(
      dependsOn: map['dependsOn'] == null ? null : ((map['dependsOn'] as List).cast<String>()).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      postBuild: map['postBuild'] == null ? null : (PostBuildDefinition.fromMap((map['postBuild'] as Map).cast<String, dynamic>())).input(),
      prune: map['prune'] == null ? null : (map['prune'] as bool).input(),
      retryIntervalInSeconds: map['retryIntervalInSeconds'] == null ? null : (map['retryIntervalInSeconds'] as double).input(),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : (map['syncIntervalInSeconds'] as double).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as double).input(),
      wait: map['wait'] == null ? null : (map['wait'] as bool).input(),
    );
  }
}

