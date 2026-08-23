// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'post_build_definition_response.dart';

/// The Kustomization defining how to reconcile the artifact pulled by the source type on the cluster.
class KustomizationDefinitionResponse {
  /// Specifies other Kustomizations that this Kustomization depends on. This Kustomization will not reconcile until all dependencies have completed their reconciliation.
  final pulumi.Input<List<String>>? dependsOn;
  /// Enable/disable re-creating Kubernetes resources on the cluster when patching fails due to an immutable field change.
  final pulumi.Input<bool>? force;
  /// Name of the Kustomization, matching the key in the Kustomizations object map.
  final pulumi.Input<String> name;
  /// The path in the source reference to reconcile on the cluster.
  final pulumi.Input<String>? path;
  /// Used for variable substitution for this Kustomization after kustomize build.
  final pulumi.Input<PostBuildDefinitionResponse>? postBuild;
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

  /// Creates a new [KustomizationDefinitionResponse].
  /// [dependsOn] Specifies other Kustomizations that this Kustomization depends on. This Kustomization will not reconcile until all dependencies have completed their reconciliation.
  /// [force] Enable/disable re-creating Kubernetes resources on the cluster when patching fails due to an immutable field change.
  /// [name] Name of the Kustomization, matching the key in the Kustomizations object map.
  /// [path] The path in the source reference to reconcile on the cluster.
  /// [postBuild] Used for variable substitution for this Kustomization after kustomize build.
  /// [prune] Enable/disable garbage collections of Kubernetes objects created by this Kustomization.
  /// [retryIntervalInSeconds] The interval at which to re-reconcile the Kustomization on the cluster in the event of failure on reconciliation.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the Kustomization on the cluster.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the Kustomization on the cluster.
  /// [wait] Enable/disable health check for all Kubernetes objects created by this Kustomization.
  const KustomizationDefinitionResponse({
    this.dependsOn,
    this.force,
    required this.name,
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
      'name': name,
      'path': ?path,
      'postBuild': ?pulumi.Input.mapOptionalInputValue<PostBuildDefinitionResponse, Map<String, dynamic>>(postBuild, (value) => value.toMap()),
      'prune': ?prune,
      'retryIntervalInSeconds': ?retryIntervalInSeconds,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'wait': ?wait,
    };
  }

  factory KustomizationDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return KustomizationDefinitionResponse(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postBuild: (() { final guardedValue = map['postBuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PostBuildDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prune: (() { final guardedValue = map['prune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retryIntervalInSeconds: (() { final guardedValue = map['retryIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      wait: (() { final guardedValue = map['wait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
