// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final bool restartNode;
  /// The severity levels of vulnerabilities that is allowed to automatically patch. Multiple severity levels are separated by commas (,).
  final String vulLevel;

  /// Creates a new [GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy].
  /// [restartNode] Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  /// [vulLevel] The severity levels of vulnerabilities that is allowed to automatically patch. Multiple severity levels are separated by commas (,).
  GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy({
    required this.restartNode,
    required this.vulLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartNode': restartNode,
      'vulLevel': vulLevel,
    };
  }

  factory GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolManagementAutoVulFixPolicy(
      restartNode: map['restartNode'] as bool,
      vulLevel: map['vulLevel'] as String,
    );
  }
}

