// ignore_for_file: unused_element, unnecessary_cast

class DataConnectorError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// (Output)
  /// A developer-facing error message, which should be in English.
  final String? message;

  DataConnectorError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory DataConnectorError.fromMap(Map<String, dynamic> map) {
    return DataConnectorError(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
