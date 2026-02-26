// ignore_for_file: unused_element, unnecessary_cast

class OperationErrorErrorsItemResponse {
  /// The error type identifier for this error.
  final String code;

  /// Indicates the field in the request that caused the error. This property is optional.
  final String location;

  /// An optional, human-readable error message.
  final String message;

  OperationErrorErrorsItemResponse({
    required this.code,
    required this.location,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['location'] = location;
    map['message'] = message;
    return map;
  }

  factory OperationErrorErrorsItemResponse.fromMap(Map<String, dynamic> map) {
    return OperationErrorErrorsItemResponse(
      code: map['code'] as String,
      location: map['location'] as String,
      message: map['message'] as String,
    );
  }
}
