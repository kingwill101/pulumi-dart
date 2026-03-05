// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional field to record suppression reason for automatic shortfall.
class AutomaticShortfallSuppressReason {
  /// Code for the suppression reason.
  final pulumi.Input<String>? code;
  /// Message for suppression reason.
  final pulumi.Input<String>? message;

  /// Creates a new [AutomaticShortfallSuppressReason].
  /// [code] Code for the suppression reason.
  /// [message] Message for suppression reason.
  AutomaticShortfallSuppressReason({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AutomaticShortfallSuppressReason.fromMap(Map<String, dynamic> map) {
    return AutomaticShortfallSuppressReason(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

