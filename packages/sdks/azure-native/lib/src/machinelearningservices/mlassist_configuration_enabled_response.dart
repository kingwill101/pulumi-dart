// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labeling MLAssist configuration definition when MLAssist is enabled
class MLAssistConfigurationEnabledResponse {
  /// [Required] AML compute binding used in inferencing.
  final pulumi.Input<String> inferencingComputeBinding;
  /// Expected value is 'Enabled'.
  final pulumi.Input<String> mlAssist;
  /// [Required] AML compute binding used in training.
  final pulumi.Input<String> trainingComputeBinding;

  /// Creates a new [MLAssistConfigurationEnabledResponse].
  /// [inferencingComputeBinding] [Required] AML compute binding used in inferencing.
  /// [mlAssist] Expected value is 'Enabled'.
  /// [trainingComputeBinding] [Required] AML compute binding used in training.
  MLAssistConfigurationEnabledResponse({
    required this.inferencingComputeBinding,
    required this.mlAssist,
    required this.trainingComputeBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferencingComputeBinding': inferencingComputeBinding,
      'mlAssist': mlAssist,
      'trainingComputeBinding': trainingComputeBinding,
    };
  }

  factory MLAssistConfigurationEnabledResponse.fromMap(Map<String, dynamic> map) {
    return MLAssistConfigurationEnabledResponse(
      inferencingComputeBinding: (map['inferencingComputeBinding'] as String).input(),
      mlAssist: (map['mlAssist'] as String).input(),
      trainingComputeBinding: (map['trainingComputeBinding'] as String).input(),
    );
  }
}

