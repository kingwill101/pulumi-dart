// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_credentials.dart';

/// Migration secret parameters.
class MigrationSecretParameters {
  /// Credentials of administrator users for source and target servers.
  final pulumi.Input<AdminCredentials> adminCredentials;
  /// Gets or sets the name of the user for the source server. This user doesn't need to be an administrator.
  final pulumi.Input<String>? sourceServerUsername;
  /// Gets or sets the name of the user for the target server. This user doesn't need to be an administrator.
  final pulumi.Input<String>? targetServerUsername;

  /// Creates a new [MigrationSecretParameters].
  /// [adminCredentials] Credentials of administrator users for source and target servers.
  /// [sourceServerUsername] Gets or sets the name of the user for the source server. This user doesn't need to be an administrator.
  /// [targetServerUsername] Gets or sets the name of the user for the target server. This user doesn't need to be an administrator.
  const MigrationSecretParameters({
    required this.adminCredentials,
    this.sourceServerUsername,
    this.targetServerUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentials': pulumi.Input.mapInputValue<AdminCredentials, Map<String, dynamic>>(adminCredentials, (value) => value.toMap()),
      'sourceServerUsername': ?sourceServerUsername,
      'targetServerUsername': ?targetServerUsername,
    };
  }

  factory MigrationSecretParameters.fromMap(Map<String, dynamic> map) {
    return MigrationSecretParameters(
      adminCredentials: pulumi.Input.fromValue(AdminCredentials.fromMap((map['adminCredentials']! as Map).cast<String, dynamic>())),
      sourceServerUsername: (() { final guardedValue = map['sourceServerUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetServerUsername: (() { final guardedValue = map['targetServerUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

