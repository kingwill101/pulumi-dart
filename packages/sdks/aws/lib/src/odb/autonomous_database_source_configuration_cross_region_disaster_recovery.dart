// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery {
  /// Whether automatic backups are replicated.
  final pulumi.Input<bool?>? isReplicateAutomaticBackups;
  /// Remote disaster recovery type.
  final pulumi.Input<String> remoteDisasterRecoveryType;
  /// ARN of the source Autonomous Database.
  final pulumi.Input<String> sourceAutonomousDatabaseArn;

  /// Creates a new [AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery].
  /// [isReplicateAutomaticBackups] Whether automatic backups are replicated.
  /// [remoteDisasterRecoveryType] Remote disaster recovery type.
  /// [sourceAutonomousDatabaseArn] ARN of the source Autonomous Database.
  const AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery({
    this.isReplicateAutomaticBackups,
    required this.remoteDisasterRecoveryType,
    required this.sourceAutonomousDatabaseArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isReplicateAutomaticBackups': ?isReplicateAutomaticBackups,
      'remoteDisasterRecoveryType': remoteDisasterRecoveryType,
      'sourceAutonomousDatabaseArn': sourceAutonomousDatabaseArn,
    };
  }

  factory AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationCrossRegionDisasterRecovery(
      isReplicateAutomaticBackups: (() { final guardedValue = map['isReplicateAutomaticBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDisasterRecoveryType: pulumi.Input.fromValue(map['remoteDisasterRecoveryType'] as String),
      sourceAutonomousDatabaseArn: pulumi.Input.fromValue(map['sourceAutonomousDatabaseArn'] as String),
    );
  }
}
