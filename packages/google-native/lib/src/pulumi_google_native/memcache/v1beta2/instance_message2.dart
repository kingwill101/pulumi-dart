// ignore_for_file: unused_element, unnecessary_cast

import 'instance_message_code2.dart';

class InstanceMessage2 {
  /// A code that correspond to one type of user-facing message.
  final InstanceMessageCode2? code;

  /// Message on memcached instance which will be exposed to users.
  final String? message;

  InstanceMessage2({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue.value;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory InstanceMessage2.fromMap(Map<String, dynamic> map) {
    return InstanceMessage2(
      code: map['code'] == null
          ? null
          : InstanceMessageCode2.fromValue(map['code'] as String),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
