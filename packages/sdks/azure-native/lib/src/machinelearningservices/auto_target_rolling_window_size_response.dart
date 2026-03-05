// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target lags rolling window determined automatically.
class AutoTargetRollingWindowSizeResponse {
  /// Target rolling windows size mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoTargetRollingWindowSizeResponse].
  /// [mode] Target rolling windows size mode.
  AutoTargetRollingWindowSizeResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetRollingWindowSizeResponse.fromMap(Map<String, dynamic> map) {
    return AutoTargetRollingWindowSizeResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

