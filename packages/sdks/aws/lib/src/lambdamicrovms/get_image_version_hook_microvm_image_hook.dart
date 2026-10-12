// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionHookMicrovmImageHook {
  /// Whether the ready hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> ready;
  /// Maximum time in seconds for the ready hook to complete.
  final pulumi.Input<int> readyTimeoutInSeconds;
  /// Whether the validate hook is `ENABLED` or `DISABLED`.
  final pulumi.Input<String> validate;
  /// Maximum time in seconds for the validate hook to complete.
  final pulumi.Input<int> validateTimeoutInSeconds;

  /// Creates a new [GetImageVersionHookMicrovmImageHook].
  /// [ready] Whether the ready hook is `ENABLED` or `DISABLED`.
  /// [readyTimeoutInSeconds] Maximum time in seconds for the ready hook to complete.
  /// [validate] Whether the validate hook is `ENABLED` or `DISABLED`.
  /// [validateTimeoutInSeconds] Maximum time in seconds for the validate hook to complete.
  const GetImageVersionHookMicrovmImageHook({
    required this.ready,
    required this.readyTimeoutInSeconds,
    required this.validate,
    required this.validateTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ready': ready,
      'readyTimeoutInSeconds': readyTimeoutInSeconds,
      'validate': validate,
      'validateTimeoutInSeconds': validateTimeoutInSeconds,
    };
  }

  factory GetImageVersionHookMicrovmImageHook.fromMap(Map<String, dynamic> map) {
    return GetImageVersionHookMicrovmImageHook(
      ready: pulumi.Input.fromValue(map['ready'] as String),
      readyTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['readyTimeoutInSeconds'])),
      validate: pulumi.Input.fromValue(map['validate'] as String),
      validateTimeoutInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['validateTimeoutInSeconds'])),
    );
  }
}
