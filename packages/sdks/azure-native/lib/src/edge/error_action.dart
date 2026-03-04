// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error Action Properties
class ErrorAction {
  /// Max tolerated failures
  final pulumi.Input<int>? maxToleratedFailures;

  /// Error action mode
  final pulumi.Input<String>? mode;

  /// Creates a new [ErrorAction].
  /// [maxToleratedFailures] Max tolerated failures
  /// [mode] Error action mode
  ErrorAction({this.maxToleratedFailures, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxToleratedFailures': ?maxToleratedFailures,
      'mode': ?mode,
    };
  }

  factory ErrorAction.fromMap(Map<String, dynamic> map) {
    return ErrorAction(
      maxToleratedFailures: (() {
        final guardedValue = map['maxToleratedFailures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
