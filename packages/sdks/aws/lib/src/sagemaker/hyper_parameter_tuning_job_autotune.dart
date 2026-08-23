// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobAutotune {
  /// Autotune mode. Valid value is `Enabled`.
  final pulumi.Input<String> mode;

  /// Creates a new [HyperParameterTuningJobAutotune].
  /// [mode] Autotune mode. Valid value is `Enabled`.
  const HyperParameterTuningJobAutotune({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory HyperParameterTuningJobAutotune.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobAutotune(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
