// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolManagementAutoRepairPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final pulumi.Input<bool>? restartNode;

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
      restartNode: (() { final guardedValue = map['restartNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

