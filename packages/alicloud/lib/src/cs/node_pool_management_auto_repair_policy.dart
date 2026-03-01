// ignore_for_file: unused_element, unnecessary_cast


class NodePoolManagementAutoRepairPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final bool? restartNode;

  /// Creates a new [NodePoolManagementAutoRepairPolicy].
  /// [restartNode] Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  NodePoolManagementAutoRepairPolicy({
    this.restartNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartNode': ?restartNode,
    };
  }

  factory NodePoolManagementAutoRepairPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolManagementAutoRepairPolicy(
      restartNode: map['restartNode'] == null ? null : map['restartNode'] as bool,
    );
  }
}

