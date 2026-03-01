// ignore_for_file: unused_element, unnecessary_cast


/// Credentials of administrator users for source and target servers.
class AdminCredentials {
  /// Password for the user of the source server.
  final String sourceServerPassword;
  /// Password for the user of the target server.
  final String targetServerPassword;

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
      sourceServerPassword: map['sourceServerPassword'] as String,
      targetServerPassword: map['targetServerPassword'] as String,
    );
  }
}

