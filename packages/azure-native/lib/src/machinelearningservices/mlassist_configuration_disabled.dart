// ignore_for_file: unused_element, unnecessary_cast


/// Labeling MLAssist configuration definition when MLAssist is disabled
class MLAssistConfigurationDisabled {
  /// Expected value is 'Disabled'.
  final String mlAssist;

  /// Creates a new [MLAssistConfigurationDisabled].
  /// [mlAssist] Expected value is 'Disabled'.
  MLAssistConfigurationDisabled({
    required this.mlAssist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mlAssist': mlAssist,
    };
  }

  factory MLAssistConfigurationDisabled.fromMap(Map<String, dynamic> map) {
    return MLAssistConfigurationDisabled(
      mlAssist: map['mlAssist'] as String,
    );
  }
}

