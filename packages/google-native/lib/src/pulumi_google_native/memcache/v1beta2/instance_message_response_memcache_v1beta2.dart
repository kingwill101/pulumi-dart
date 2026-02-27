// ignore_for_file: unused_element, unnecessary_cast

class InstanceMessageResponseMemcacheV1beta2 {
  /// A code that correspond to one type of user-facing message.
  final String code;

  /// Message on memcached instance which will be exposed to users.
  final String message;

  InstanceMessageResponseMemcacheV1beta2({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory InstanceMessageResponseMemcacheV1beta2.fromMap(
      Map<String, dynamic> map) {
    return InstanceMessageResponseMemcacheV1beta2(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
