// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The info w.r.t Agent Upgrade.
class AgentUpgradeResponse {
  /// The correlation ID passed in from RSM per upgrade.
  final pulumi.Input<String>? correlationId;
  /// Specifies the version info w.r.t AgentUpgrade for the machine.
  final pulumi.Input<String>? desiredVersion;
  /// Specifies if RSM should try to upgrade this machine
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// Specifies the version of the last attempt
  final pulumi.Input<String> lastAttemptDesiredVersion;
  /// Failure message of last upgrade attempt if any.
  final pulumi.Input<String> lastAttemptMessage;
  /// Specifies the status of Agent Upgrade.
  final pulumi.Input<String> lastAttemptStatus;
  /// Timestamp of last upgrade attempt
  final pulumi.Input<String> lastAttemptTimestamp;

  /// Creates a new [AgentUpgradeResponse].
  /// [correlationId] The correlation ID passed in from RSM per upgrade.
  /// [desiredVersion] Specifies the version info w.r.t AgentUpgrade for the machine.
  /// [enableAutomaticUpgrade] Specifies if RSM should try to upgrade this machine
  /// [lastAttemptDesiredVersion] Specifies the version of the last attempt
  /// [lastAttemptMessage] Failure message of last upgrade attempt if any.
  /// [lastAttemptStatus] Specifies the status of Agent Upgrade.
  /// [lastAttemptTimestamp] Timestamp of last upgrade attempt
  const AgentUpgradeResponse({
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
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredVersion: (() { final guardedValue = map['desiredVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastAttemptDesiredVersion: pulumi.Input.fromValue(map['lastAttemptDesiredVersion'] as String),
      lastAttemptMessage: pulumi.Input.fromValue(map['lastAttemptMessage'] as String),
      lastAttemptStatus: pulumi.Input.fromValue(map['lastAttemptStatus'] as String),
      lastAttemptTimestamp: pulumi.Input.fromValue(map['lastAttemptTimestamp'] as String),
    );
  }
}
