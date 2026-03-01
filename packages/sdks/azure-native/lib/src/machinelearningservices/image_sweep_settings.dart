// ignore_for_file: unused_element, unnecessary_cast

import 'bandit_policy.dart';

/// Model sweeping and hyperparameter sweeping related settings.
class ImageSweepSettings {
  /// Type of early termination policy.
  final BanditPolicy? earlyTermination;
  /// [Required] Type of the hyperparameter sampling algorithms.
  final String samplingAlgorithm;

  /// Creates a new [ImageSweepSettings].
  /// [earlyTermination] Type of early termination policy.
  /// [samplingAlgorithm] [Required] Type of the hyperparameter sampling algorithms.
  ImageSweepSettings({
    this.earlyTermination,
    required this.samplingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyTermination': ?earlyTermination == null ? null : earlyTermination!.toMap(),
      'samplingAlgorithm': samplingAlgorithm,
    };
  }

  factory ImageSweepSettings.fromMap(Map<String, dynamic> map) {
    return ImageSweepSettings(
      earlyTermination: map['earlyTermination'] == null ? null : BanditPolicy.fromMap((map['earlyTermination'] as Map).cast<String, dynamic>()),
      samplingAlgorithm: map['samplingAlgorithm'] as String,
    );
  }
}

