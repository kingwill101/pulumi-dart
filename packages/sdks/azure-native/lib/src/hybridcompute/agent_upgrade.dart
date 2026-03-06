// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The info w.r.t Agent Upgrade.
class AgentUpgrade {
  /// The correlation ID passed in from RSM per upgrade.
  final pulumi.Input<String>? correlationId;
  /// Specifies the version info w.r.t AgentUpgrade for the machine.
  final pulumi.Input<String>? desiredVersion;
  /// Specifies if RSM should try to upgrade this machine
  final pulumi.Input<bool>? enableAutomaticUpgrade;

  /// Creates a new [AgentUpgrade].
  /// [correlationId] The correlation ID passed in from RSM per upgrade.
  /// [desiredVersion] Specifies the version info w.r.t AgentUpgrade for the machine.
  /// [enableAutomaticUpgrade] Specifies if RSM should try to upgrade this machine
  const AgentUpgrade({
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
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredVersion: (() { final guardedValue = map['desiredVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutomaticUpgrade: (() { final guardedValue = map['enableAutomaticUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

