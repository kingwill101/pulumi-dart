// ignore_for_file: unused_element, unnecessary_cast

import 'instance_message_code_memcache_v1beta2.dart';

class InstanceMessageMemcacheV1beta2 {
  /// A code that correspond to one type of user-facing message.
  final InstanceMessageCodeMemcacheV1beta2? code;

  /// Message on memcached instance which will be exposed to users.
  final String? message;

  /// Creates a new [InstanceMessageMemcacheV1beta2].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  InstanceMessageMemcacheV1beta2({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.value,
      'message': ?message,
    };
  }

  factory InstanceMessageMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return InstanceMessageMemcacheV1beta2(
      code: map['code'] == null
          ? null
          : InstanceMessageCodeMemcacheV1beta2.fromValue(map['code'] as String),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
