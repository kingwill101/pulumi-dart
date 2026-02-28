// ignore_for_file: unused_element, unnecessary_cast

class BiEngineReasonResponse {
  /// High-level BI Engine reason for partial or disabled acceleration.
  final String code;

  /// Free form human-readable reason for partial or disabled acceleration.
  final String message;

  /// Creates a new [BiEngineReasonResponse].
  /// [code] High-level BI Engine reason for partial or disabled acceleration.
  /// [message] Free form human-readable reason for partial or disabled acceleration.
  BiEngineReasonResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory BiEngineReasonResponse.fromMap(Map<String, dynamic> map) {
    return BiEngineReasonResponse(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
