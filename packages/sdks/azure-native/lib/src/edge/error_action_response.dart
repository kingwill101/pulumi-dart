// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error Action Properties
class ErrorActionResponse {
  /// Max tolerated failures
  final pulumi.Input<int?>? maxToleratedFailures;
  /// Error action mode
  final pulumi.Input<String?>? mode;

  /// Creates a new [ErrorActionResponse].
  /// [maxToleratedFailures] Max tolerated failures
  /// [mode] Error action mode
  ErrorActionResponse({
    this.maxToleratedFailures,
    pulumi.Input<String?>? mode,
  }) : mode = mode ?? pulumi.Input.fromValue('stopOnAnyFailure');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxToleratedFailures': ?maxToleratedFailures,
      'mode': ?mode,
    };
  }

  factory ErrorActionResponse.fromMap(Map<String, dynamic> map) {
    return ErrorActionResponse(
      maxToleratedFailures: (() { final guardedValue = map['maxToleratedFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
