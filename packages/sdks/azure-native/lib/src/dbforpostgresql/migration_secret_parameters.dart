// ignore_for_file: unused_element, unnecessary_cast

import 'admin_credentials.dart';

/// Migration secret parameters.
class MigrationSecretParameters {
  /// Credentials of administrator users for source and target servers.
  final AdminCredentials adminCredentials;
  /// Gets or sets the name of the user for the source server. This user doesn't need to be an administrator.
  final String? sourceServerUsername;
  /// Gets or sets the name of the user for the target server. This user doesn't need to be an administrator.
  final String? targetServerUsername;

  /// Creates a new [MigrationSecretParameters].
  /// [adminCredentials] Credentials of administrator users for source and target servers.
  /// [sourceServerUsername] Gets or sets the name of the user for the source server. This user doesn't need to be an administrator.
  /// [targetServerUsername] Gets or sets the name of the user for the target server. This user doesn't need to be an administrator.
  MigrationSecretParameters({
    required this.adminCredentials,
    this.sourceServerUsername,
    this.targetServerUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentials': adminCredentials.toMap(),
      'sourceServerUsername': ?sourceServerUsername,
      'targetServerUsername': ?targetServerUsername,
    };
  }

  factory MigrationSecretParameters.fromMap(Map<String, dynamic> map) {
    return MigrationSecretParameters(
      adminCredentials: AdminCredentials.fromMap((map['adminCredentials'] as Map).cast<String, dynamic>()),
      sourceServerUsername: map['sourceServerUsername'] == null ? null : map['sourceServerUsername'] as String,
      targetServerUsername: map['targetServerUsername'] == null ? null : map['targetServerUsername'] as String,
    );
  }
}

