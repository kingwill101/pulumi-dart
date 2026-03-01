// ignore_for_file: unused_element, unnecessary_cast


/// Labeling MLAssist configuration definition when MLAssist is enabled
class MLAssistConfigurationEnabledResponse {
  /// [Required] AML compute binding used in inferencing.
  final String inferencingComputeBinding;
  /// Expected value is 'Enabled'.
  final String mlAssist;
  /// [Required] AML compute binding used in training.
  final String trainingComputeBinding;

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
      inferencingComputeBinding: map['inferencingComputeBinding'] as String,
      mlAssist: map['mlAssist'] as String,
      trainingComputeBinding: map['trainingComputeBinding'] as String,
    );
  }
}

