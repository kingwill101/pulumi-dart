// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labeling MLAssist configuration definition when MLAssist is enabled
class MLAssistConfigurationEnabled {
  /// [Required] AML compute binding used in inferencing.
  final pulumi.Input<String> inferencingComputeBinding;
  /// Expected value is 'Enabled'.
  final pulumi.Input<String> mlAssist;
  /// [Required] AML compute binding used in training.
  final pulumi.Input<String> trainingComputeBinding;

  /// Creates a new [MLAssistConfigurationEnabled].
  /// [inferencingComputeBinding] [Required] AML compute binding used in inferencing.
  /// [mlAssist] Expected value is 'Enabled'.
  /// [trainingComputeBinding] [Required] AML compute binding used in training.
  const MLAssistConfigurationEnabled({
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

  factory MLAssistConfigurationEnabled.fromMap(Map<String, dynamic> map) {
    return MLAssistConfigurationEnabled(
      inferencingComputeBinding: pulumi.Input.fromValue(map['inferencingComputeBinding'] as String),
      mlAssist: pulumi.Input.fromValue(map['mlAssist'] as String),
      trainingComputeBinding: pulumi.Input.fromValue(map['trainingComputeBinding'] as String),
    );
  }
}

