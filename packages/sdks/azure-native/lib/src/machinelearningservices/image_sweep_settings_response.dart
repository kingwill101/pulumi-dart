// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandit_policy_response.dart';

/// Model sweeping and hyperparameter sweeping related settings.
class ImageSweepSettingsResponse {
  /// Type of early termination policy.
  final pulumi.Input<BanditPolicyResponse>? earlyTermination;
  /// [Required] Type of the hyperparameter sampling algorithms.
  final pulumi.Input<String> samplingAlgorithm;

  /// Creates a new [ImageSweepSettingsResponse].
  /// [earlyTermination] Type of early termination policy.
  /// [samplingAlgorithm] [Required] Type of the hyperparameter sampling algorithms.
  ImageSweepSettingsResponse({
    this.earlyTermination,
    required this.samplingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyTermination': ?pulumi.Input.mapOptionalInputValue<BanditPolicyResponse, Map<String, dynamic>>(earlyTermination, (value) => value.toMap()),
      'samplingAlgorithm': samplingAlgorithm,
    };
  }

  factory ImageSweepSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ImageSweepSettingsResponse(
      earlyTermination: map['earlyTermination'] == null ? null : (BanditPolicyResponse.fromMap((map['earlyTermination'] as Map).cast<String, dynamic>())).input(),
      samplingAlgorithm: (map['samplingAlgorithm'] as String).input(),
    );
  }
}

