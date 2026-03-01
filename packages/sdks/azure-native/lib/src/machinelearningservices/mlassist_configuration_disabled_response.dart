// ignore_for_file: unused_element, unnecessary_cast


/// Labeling MLAssist configuration definition when MLAssist is disabled
class MLAssistConfigurationDisabledResponse {
  /// Expected value is 'Disabled'.
  final String mlAssist;

  /// Creates a new [MLAssistConfigurationDisabledResponse].
  /// [mlAssist] Expected value is 'Disabled'.
  MLAssistConfigurationDisabledResponse({
    required this.mlAssist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mlAssist': mlAssist,
    };
  }

  factory MLAssistConfigurationDisabledResponse.fromMap(Map<String, dynamic> map) {
    return MLAssistConfigurationDisabledResponse(
      mlAssist: map['mlAssist'] as String,
    );
  }
}

