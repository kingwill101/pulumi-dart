// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageStateChangeReason {
  final pulumi.Input<String> code;
  final pulumi.Input<String> message;

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
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

