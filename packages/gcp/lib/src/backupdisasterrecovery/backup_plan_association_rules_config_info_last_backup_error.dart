// ignore_for_file: unused_element, unnecessary_cast


class BackupPlanAssociationRulesConfigInfoLastBackupError {
  /// (Output)
  /// The status code, which should be an enum value of [google.rpc.Code]
  final double? code;
  /// (Output)
  /// A developer-facing error message, which should be in English.
  final String? message;

  /// Creates a new [BackupPlanAssociationRulesConfigInfoLastBackupError].
  /// [code] (Output)
  /// [message] (Output)
  BackupPlanAssociationRulesConfigInfoLastBackupError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory BackupPlanAssociationRulesConfigInfoLastBackupError.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationRulesConfigInfoLastBackupError(
      code: map['code'] == null ? null : map['code'] as double,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

