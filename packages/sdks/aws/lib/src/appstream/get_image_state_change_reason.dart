// ignore_for_file: unused_element, unnecessary_cast


class GetImageStateChangeReason {
  final String code;
  final String message;

  /// Creates a new [GetImageStateChangeReason].
  /// [code] Required.
  /// [message] Required.
  GetImageStateChangeReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetImageStateChangeReason.fromMap(Map<String, dynamic> map) {
    return GetImageStateChangeReason(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}

