// ignore_for_file: unused_element, unnecessary_cast

/// Database instance operation error.
class OperationErrorResponseSqladminV1 {
  /// Identifies the specific error that occurred.
  final String code;

  /// This is always `sql#operationError`.
  final String kind;

  /// Additional information about the error encountered.
  final String message;

  OperationErrorResponseSqladminV1({
    required this.code,
    required this.kind,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['kind'] = kind;
    map['message'] = message;
    return map;
  }

  factory OperationErrorResponseSqladminV1.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponseSqladminV1(
      code: map['code'] as String,
      kind: map['kind'] as String,
      message: map['message'] as String,
    );
  }
}
