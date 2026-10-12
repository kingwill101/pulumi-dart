// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationDatabaseClone {
  /// Clone type.
  final pulumi.Input<String> cloneType;
  /// ID of the source Autonomous Database.
  final pulumi.Input<String> sourceAutonomousDatabaseId;

  /// Creates a new [AutonomousDatabaseSourceConfigurationDatabaseClone].
  /// [cloneType] Clone type.
  /// [sourceAutonomousDatabaseId] ID of the source Autonomous Database.
  const AutonomousDatabaseSourceConfigurationDatabaseClone({
    required this.cloneType,
    required this.sourceAutonomousDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneType': cloneType,
      'sourceAutonomousDatabaseId': sourceAutonomousDatabaseId,
    };
  }

  factory AutonomousDatabaseSourceConfigurationDatabaseClone.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationDatabaseClone(
      cloneType: pulumi.Input.fromValue(map['cloneType'] as String),
      sourceAutonomousDatabaseId: pulumi.Input.fromValue(map['sourceAutonomousDatabaseId'] as String),
    );
  }
}
