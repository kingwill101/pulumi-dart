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
  const NodePoolUpgradePolicy({
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
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useReplace: (() { final guardedValue = map['useReplace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

