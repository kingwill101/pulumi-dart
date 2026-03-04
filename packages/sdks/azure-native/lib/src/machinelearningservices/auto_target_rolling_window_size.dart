// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target lags rolling window determined automatically.
class AutoTargetRollingWindowSize {
  /// Target rolling windows size mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoTargetRollingWindowSize].
  /// [mode] Target rolling windows size mode.
  AutoTargetRollingWindowSize({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory AutoTargetRollingWindowSize.fromMap(Map<String, dynamic> map) {
    return AutoTargetRollingWindowSize(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
