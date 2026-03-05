// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PhoneNumberStatus {
  /// The status message.
  final pulumi.Input<String>? message;
  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  final pulumi.Input<String>? status;

  /// Creates a new [PhoneNumberStatus].
  /// [message] The status message.
  /// [status] The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  PhoneNumberStatus({
    this.message,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'status': ?status,
    };
  }

  factory PhoneNumberStatus.fromMap(Map<String, dynamic> map) {
    return PhoneNumberStatus(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

