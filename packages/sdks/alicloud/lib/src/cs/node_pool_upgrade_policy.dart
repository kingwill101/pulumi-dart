// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolUpgradePolicy {
  /// Node system Image ID
  final pulumi.Input<String>? imageId;
  /// Node Kubernetes version
  final pulumi.Input<String>? kubernetesVersion;
  /// Node runtime type
  final pulumi.Input<String>? runtime;
  /// Node Runtime Version
  final pulumi.Input<String>? runtimeVersion;
  /// Whether to use replacement disk upgrade. Valid values:
  final pulumi.Input<bool>? useReplace;

  /// Creates a new [NodePoolUpgradePolicy].
  /// [imageId] Node system Image ID
  /// [kubernetesVersion] Node Kubernetes version
  /// [runtime] Node runtime type
  /// [runtimeVersion] Node Runtime Version
  /// [useReplace] Whether to use replacement disk upgrade. Valid values:
  NodePoolUpgradePolicy({
    this.imageId,
    this.kubernetesVersion,
    this.runtime,
    this.runtimeVersion,
    this.useReplace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': ?imageId,
      'kubernetesVersion': ?kubernetesVersion,
      'runtime': ?runtime,
      'runtimeVersion': ?runtimeVersion,
      'useReplace': ?useReplace,
    };
  }

  factory NodePoolUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolUpgradePolicy(
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion'] as String).input(),
      runtime: map['runtime'] == null ? null : (map['runtime'] as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
      useReplace: map['useReplace'] == null ? null : (map['useReplace'] as bool).input(),
    );
  }
}

