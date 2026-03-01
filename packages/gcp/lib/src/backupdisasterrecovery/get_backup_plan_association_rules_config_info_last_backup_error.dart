// ignore_for_file: unused_element, unnecessary_cast


class GetBackupPlanAssociationRulesConfigInfoLastBackupError {
  /// The status code, which should be an enum value of [google.rpc.Code]
  final double code;
  /// A developer-facing error message, which should be in English.
  final String message;

  /// Creates a new [GetBackupPlanAssociationRulesConfigInfoLastBackupError].
  /// [code] The status code, which should be an enum value of [google.rpc.Code]
  /// [message] A developer-facing error message, which should be in English.
  GetBackupPlanAssociationRulesConfigInfoLastBackupError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetBackupPlanAssociationRulesConfigInfoLastBackupError.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationRulesConfigInfoLastBackupError(
      code: map['code'] as double,
      message: map['message'] as String,
    );
  }
}

