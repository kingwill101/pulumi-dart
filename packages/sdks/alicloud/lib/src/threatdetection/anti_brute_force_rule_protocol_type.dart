// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AntiBruteForceRuleProtocolType {
  /// Whether to enable RDP interception. Default value: `on`. Valid values: `on`, `off`.
  final pulumi.Input<String>? rdp;
  /// Whether to enable the SqlServer interception method. Default value: `off`. Valid values: `on`, `off`.
  final pulumi.Input<String>? sqlServer;
  /// Whether to enable SSH interception. Default value: `on`. Valid values: `on`, `off`.
  final pulumi.Input<String>? ssh;

  /// Creates a new [AntiBruteForceRuleProtocolType].
  /// [rdp] Whether to enable RDP interception. Default value: `on`. Valid values: `on`, `off`.
  /// [sqlServer] Whether to enable the SqlServer interception method. Default value: `off`. Valid values: `on`, `off`.
  /// [ssh] Whether to enable SSH interception. Default value: `on`. Valid values: `on`, `off`.
  AntiBruteForceRuleProtocolType({
    this.rdp,
    this.sqlServer,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': ?rdp,
      'sqlServer': ?sqlServer,
      'ssh': ?ssh,
    };
  }

  factory AntiBruteForceRuleProtocolType.fromMap(Map<String, dynamic> map) {
    return AntiBruteForceRuleProtocolType(
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServer: (() { final guardedValue = map['sqlServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

