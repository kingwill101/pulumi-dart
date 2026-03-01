// ignore_for_file: unused_element, unnecessary_cast


class AntiBruteForceRuleProtocolType {
  /// Whether to enable RDP interception. Default value: `on`. Valid values: `on`, `off`.
  final String? rdp;
  /// Whether to enable the SqlServer interception method. Default value: `off`. Valid values: `on`, `off`.
  final String? sqlServer;
  /// Whether to enable SSH interception. Default value: `on`. Valid values: `on`, `off`.
  final String? ssh;

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
      rdp: map['rdp'] == null ? null : map['rdp'] as String,
      sqlServer: map['sqlServer'] == null ? null : map['sqlServer'] as String,
      ssh: map['ssh'] == null ? null : map['ssh'] as String,
    );
  }
}

