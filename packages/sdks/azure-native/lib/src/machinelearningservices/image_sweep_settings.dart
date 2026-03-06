// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandit_policy.dart';

/// Model sweeping and hyperparameter sweeping related settings.
class ImageSweepSettings {
  /// Type of early termination policy.
  final pulumi.Input<BanditPolicy>? earlyTermination;
  /// [Required] Type of the hyperparameter sampling algorithms.
  final pulumi.Input<String> samplingAlgorithm;

  /// Creates a new [ImageSweepSettings].
  /// [earlyTermination] Type of early termination policy.
  /// [samplingAlgorithm] [Required] Type of the hyperparameter sampling algorithms.
  const ImageSweepSettings({
    this.earlyTermination,
    required this.samplingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyTermination': ?pulumi.Input.mapOptionalInputValue<BanditPolicy, Map<String, dynamic>>(earlyTermination, (value) => value.toMap()),
      'samplingAlgorithm': samplingAlgorithm,
    };
  }

  factory ImageSweepSettings.fromMap(Map<String, dynamic> map) {
    return ImageSweepSettings(
      earlyTermination: (() { final guardedValue = map['earlyTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BanditPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samplingAlgorithm: pulumi.Input.fromValue(map['samplingAlgorithm'] as String),
    );
  }
}

