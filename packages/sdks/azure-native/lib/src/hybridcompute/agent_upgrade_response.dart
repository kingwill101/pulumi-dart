// ignore_for_file: unused_element, unnecessary_cast


/// The info w.r.t Agent Upgrade.
class AgentUpgradeResponse {
  /// The correlation ID passed in from RSM per upgrade.
  final String? correlationId;
  /// Specifies the version info w.r.t AgentUpgrade for the machine.
  final String? desiredVersion;
  /// Specifies if RSM should try to upgrade this machine
  final bool? enableAutomaticUpgrade;
  /// Specifies the version of the last attempt
  final String lastAttemptDesiredVersion;
  /// Failure message of last upgrade attempt if any.
  final String lastAttemptMessage;
  /// Specifies the status of Agent Upgrade.
  final String lastAttemptStatus;
  /// Timestamp of last upgrade attempt
  final String lastAttemptTimestamp;

  /// Creates a new [AgentUpgradeResponse].
  /// [correlationId] The correlation ID passed in from RSM per upgrade.
  /// [desiredVersion] Specifies the version info w.r.t AgentUpgrade for the machine.
  /// [enableAutomaticUpgrade] Specifies if RSM should try to upgrade this machine
  /// [lastAttemptDesiredVersion] Specifies the version of the last attempt
  /// [lastAttemptMessage] Failure message of last upgrade attempt if any.
  /// [lastAttemptStatus] Specifies the status of Agent Upgrade.
  /// [lastAttemptTimestamp] Timestamp of last upgrade attempt
  AgentUpgradeResponse({
    this.correlationId,
    this.desiredVersion,
    this.enableAutomaticUpgrade,
    required this.lastAttemptDesiredVersion,
    required this.lastAttemptMessage,
    required this.lastAttemptStatus,
    required this.lastAttemptTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationId': ?correlationId,
      'desiredVersion': ?desiredVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'lastAttemptDesiredVersion': lastAttemptDesiredVersion,
      'lastAttemptMessage': lastAttemptMessage,
      'lastAttemptStatus': lastAttemptStatus,
      'lastAttemptTimestamp': lastAttemptTimestamp,
    };
  }

  factory AgentUpgradeResponse.fromMap(Map<String, dynamic> map) {
    return AgentUpgradeResponse(
      correlationId: map['correlationId'] == null ? null : map['correlationId'] as String,
      desiredVersion: map['desiredVersion'] == null ? null : map['desiredVersion'] as String,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      lastAttemptDesiredVersion: map['lastAttemptDesiredVersion'] as String,
      lastAttemptMessage: map['lastAttemptMessage'] as String,
      lastAttemptStatus: map['lastAttemptStatus'] as String,
      lastAttemptTimestamp: map['lastAttemptTimestamp'] as String,
    );
  }
}

