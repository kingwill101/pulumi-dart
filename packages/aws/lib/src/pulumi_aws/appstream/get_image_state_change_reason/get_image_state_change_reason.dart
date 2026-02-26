// ignore_for_file: unused_element, unnecessary_cast

class GetImageStateChangeReason {
  final String code;
  final String message;

  GetImageStateChangeReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory GetImageStateChangeReason.fromMap(Map<String, dynamic> map) {
    return GetImageStateChangeReason(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
