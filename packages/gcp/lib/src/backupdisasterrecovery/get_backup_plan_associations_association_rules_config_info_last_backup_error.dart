// ignore_for_file: unused_element, unnecessary_cast


class GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError {
  /// The status code, which should be an enum value of [google.rpc.Code].
  final int code;
  /// A developer-facing error message.
  final String message;

  /// Creates a new [GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError].
  /// [code] The status code, which should be an enum value of [google.rpc.Code].
  /// [message] A developer-facing error message.
  GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError(
      code: map['code'] as int,
      message: map['message'] as String,
    );
  }
}

