// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolManagementAutoVulFixPolicy {
  /// Specifies whether to automatically restart nodes after patching CVE vulnerabilities. Valid values: `true`, `false`.
  final pulumi.Input<bool>? restartNode;
  /// The severity levels of vulnerabilities that is allowed to automatically patch. Multiple severity levels are separated by commas (,).
  final pulumi.Input<String>? vulLevel;

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
      restartNode: (() { final guardedValue = map['restartNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vulLevel: (() { final guardedValue = map['vulLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

