// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials of administrator users for source and target servers.
class AdminCredentials {
  /// Password for the user of the source server.
  final pulumi.Input<String> sourceServerPassword;

  /// Password for the user of the target server.
  final pulumi.Input<String> targetServerPassword;

  /// Creates a new [AdminCredentials].
  /// [sourceServerPassword] Password for the user of the source server.
  /// [targetServerPassword] Password for the user of the target server.
  AdminCredentials({
    required this.sourceServerPassword,
    required this.targetServerPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceServerPassword': sourceServerPassword,
      'targetServerPassword': targetServerPassword,
    };
  }

  factory AdminCredentials.fromMap(Map<String, dynamic> map) {
    return AdminCredentials(
      sourceServerPassword: pulumi.Input.fromValue(
        map['sourceServerPassword'] as String,
      ),
      targetServerPassword: pulumi.Input.fromValue(
        map['targetServerPassword'] as String,
      ),
    );
  }
}
