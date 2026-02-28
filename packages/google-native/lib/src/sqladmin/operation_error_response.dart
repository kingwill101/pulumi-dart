// ignore_for_file: unused_element, unnecessary_cast


/// Database instance operation error.
class OperationErrorResponse {
  /// Identifies the specific error that occurred.
  final String code;
  /// This is always `sql#operationError`.
  final String kind;
  /// Additional information about the error encountered.
  final String message;

  /// Creates a new [OperationErrorResponse].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  OperationErrorResponse({
    required this.code,
    required this.kind,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'kind': kind,
      'message': message,
    };
  }

  factory OperationErrorResponse.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponse(
      code: map['code'] as String,
      kind: map['kind'] as String,
      message: map['message'] as String,
    );
  }
}

