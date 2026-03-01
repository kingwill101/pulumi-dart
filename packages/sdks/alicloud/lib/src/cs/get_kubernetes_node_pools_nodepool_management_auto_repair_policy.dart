// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final bool restartNode;

  /// Creates a new [GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy].
  /// [restartNode] Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy({
    required this.restartNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartNode': restartNode,
    };
  }

  factory GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolManagementAutoRepairPolicy(
      restartNode: map['restartNode'] as bool,
    );
  }
}

