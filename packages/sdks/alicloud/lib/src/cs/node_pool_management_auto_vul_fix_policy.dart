// ignore_for_file: unused_element, unnecessary_cast


class NodePoolManagementAutoVulFixPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final bool? restartNode;
  /// The severity levels of vulnerabilities that is allowed to automatically patch. Multiple severity levels are separated by commas (,).
  final String? vulLevel;

  /// Creates a new [NodePoolManagementAutoVulFixPolicy].
  /// [restartNode] Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  /// [vulLevel] The severity levels of vulnerabilities that is allowed to automatically patch. Multiple severity levels are separated by commas (,).
  NodePoolManagementAutoVulFixPolicy({
    this.restartNode,
    this.vulLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartNode': ?restartNode,
      'vulLevel': ?vulLevel,
    };
  }

  factory NodePoolManagementAutoVulFixPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolManagementAutoVulFixPolicy(
      restartNode: map['restartNode'] == null ? null : map['restartNode'] as bool,
      vulLevel: map['vulLevel'] == null ? null : map['vulLevel'] as String,
    );
  }
}

