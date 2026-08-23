// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageStateChangeReason {
  /// State change reason code.
  final pulumi.Input<String> code;
  /// State change reason message.
  final pulumi.Input<String> message;

  /// Creates a new [GetImageStateChangeReason].
  /// [code] State change reason code.
  /// [message] State change reason message.
  const GetImageStateChangeReason({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
