// ignore_for_file: unused_element, unnecessary_cast

/// Database instance operation error.
class OperationError2 {
  /// Identifies the specific error that occurred.
  final String? code;

  /// This is always `sql#operationError`.
  final String? kind;

  /// Additional information about the error encountered.
  final String? message;

  OperationError2({
    this.code,
    this.kind,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory OperationError2.fromMap(Map<String, dynamic> map) {
    return OperationError2(
      code: map['code'] == null ? null : map['code'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
