// ignore_for_file: unused_element, unnecessary_cast


class NodePoolUpgradePolicy {
  /// Node system Image ID
  final String? imageId;
  /// Node Kubernetes version
  final String? kubernetesVersion;
  /// Node runtime type
  final String? runtime;
  /// Node Runtime Version
  final String? runtimeVersion;
  /// Whether to use replacement disk upgrade. Valid values:
  final bool? useReplace;

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
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      useReplace: map['useReplace'] == null ? null : map['useReplace'] as bool,
    );
  }
}

