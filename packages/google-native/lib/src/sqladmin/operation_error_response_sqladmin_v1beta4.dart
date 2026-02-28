// ignore_for_file: unused_element, unnecessary_cast

/// Database instance operation error.
class OperationErrorResponseSqladminV1beta4 {
  /// Identifies the specific error that occurred.
  final String code;

  /// This is always `sql#operationError`.
  final String kind;

  /// Additional information about the error encountered.
  final String message;

  /// Creates a new [OperationErrorResponseSqladminV1beta4].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  OperationErrorResponseSqladminV1beta4({
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

  factory OperationErrorResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return OperationErrorResponseSqladminV1beta4(
      code: map['code'] as String,
      kind: map['kind'] as String,
      message: map['message'] as String,
    );
  }
}
