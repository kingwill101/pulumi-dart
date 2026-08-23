// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional field to record suppression reason for automatic shortfall.
class AutomaticShortfallSuppressReasonResponse {
  /// Code for the suppression reason.
  final pulumi.Input<String>? code;
  /// Message for suppression reason.
  final pulumi.Input<String>? message;

  /// Creates a new [AutomaticShortfallSuppressReasonResponse].
  /// [code] Code for the suppression reason.
  /// [message] Message for suppression reason.
  const AutomaticShortfallSuppressReasonResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AutomaticShortfallSuppressReasonResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticShortfallSuppressReasonResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
