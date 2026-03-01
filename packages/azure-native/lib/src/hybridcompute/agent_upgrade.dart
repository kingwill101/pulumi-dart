// ignore_for_file: unused_element, unnecessary_cast


/// The info w.r.t Agent Upgrade.
class AgentUpgrade {
  /// The correlation ID passed in from RSM per upgrade.
  final String? correlationId;
  /// Specifies the version info w.r.t AgentUpgrade for the machine.
  final String? desiredVersion;
  /// Specifies if RSM should try to upgrade this machine
  final bool? enableAutomaticUpgrade;

  /// Creates a new [AgentUpgrade].
  /// [correlationId] The correlation ID passed in from RSM per upgrade.
  /// [desiredVersion] Specifies the version info w.r.t AgentUpgrade for the machine.
  /// [enableAutomaticUpgrade] Specifies if RSM should try to upgrade this machine
  AgentUpgrade({
    this.correlationId,
    this.desiredVersion,
    this.enableAutomaticUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationId': ?correlationId,
      'desiredVersion': ?desiredVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
    };
  }

  factory AgentUpgrade.fromMap(Map<String, dynamic> map) {
    return AgentUpgrade(
      correlationId: map['correlationId'] == null ? null : map['correlationId'] as String,
      desiredVersion: map['desiredVersion'] == null ? null : map['desiredVersion'] as String,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
    );
  }
}

