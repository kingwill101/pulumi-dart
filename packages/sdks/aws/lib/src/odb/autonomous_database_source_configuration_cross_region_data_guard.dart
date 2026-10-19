// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationCrossRegionDataGuard {
  /// ARN of the source Autonomous Database.
  final pulumi.Input<String> sourceAutonomousDatabaseArn;

  /// Creates a new [AutonomousDatabaseSourceConfigurationCrossRegionDataGuard].
  /// [sourceAutonomousDatabaseArn] ARN of the source Autonomous Database.
  const AutonomousDatabaseSourceConfigurationCrossRegionDataGuard({
    required this.sourceAutonomousDatabaseArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAutonomousDatabaseArn': sourceAutonomousDatabaseArn,
    };
  }

  factory AutonomousDatabaseSourceConfigurationCrossRegionDataGuard.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationCrossRegionDataGuard(
      sourceAutonomousDatabaseArn: pulumi.Input.fromValue(map['sourceAutonomousDatabaseArn'] as String),
    );
  }
}
