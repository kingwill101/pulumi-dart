// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model sweeping and hyperparameter sweeping related settings.
class ImageSweepSettings {
  /// Type of early termination policy.
  final pulumi.Input<dynamic>? earlyTermination;
  /// [Required] Type of the hyperparameter sampling algorithms.
  final pulumi.Input<dynamic> samplingAlgorithm;

  /// Creates a new [ImageSweepSettings].
  /// [earlyTermination] Type of early termination policy.
  /// [samplingAlgorithm] [Required] Type of the hyperparameter sampling algorithms.
  const ImageSweepSettings({
    this.earlyTermination,
    required this.samplingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyTermination': ?earlyTermination,
      'samplingAlgorithm': samplingAlgorithm,
    };
  }

  factory ImageSweepSettings.fromMap(Map<String, dynamic> map) {
    return ImageSweepSettings(
      earlyTermination: (() { final guardedValue = map['earlyTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      samplingAlgorithm: pulumi.Input.fromValue(map['samplingAlgorithm']),
    );
  }
}
