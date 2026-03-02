// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoTargetLags {
  /// Target lags selection modes.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoTargetLags].
  /// [mode] Target lags selection modes.
  AutoTargetLags({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetLags.fromMap(Map<String, dynamic> map) {
    return AutoTargetLags(
      mode: (map['mode'] as String).input(),
    );
  }
}

