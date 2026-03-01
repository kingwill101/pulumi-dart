// ignore_for_file: unused_element, unnecessary_cast


class FeatureImportanceSettings {
  /// The mode of operation for computing feature importance.
  final String? mode;
  /// The name of the target column within the input data asset.
  final String? targetColumn;

  /// Creates a new [FeatureImportanceSettings].
  /// [mode] The mode of operation for computing feature importance.
  /// [targetColumn] The name of the target column within the input data asset.
  FeatureImportanceSettings({
    this.mode,
    this.targetColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'targetColumn': ?targetColumn,
    };
  }

  factory FeatureImportanceSettings.fromMap(Map<String, dynamic> map) {
    return FeatureImportanceSettings(
      mode: map['mode'] == null ? null : map['mode'] as String,
      targetColumn: map['targetColumn'] == null ? null : map['targetColumn'] as String,
    );
  }
}

