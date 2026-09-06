// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureImportanceSettings {
  /// The mode of operation for computing feature importance.
  final pulumi.Input<dynamic>? mode;
  /// The name of the target column within the input data asset.
  final pulumi.Input<String?>? targetColumn;

  /// Creates a new [FeatureImportanceSettings].
  /// [mode] The mode of operation for computing feature importance.
  /// [targetColumn] The name of the target column within the input data asset.
  FeatureImportanceSettings({
    pulumi.Input<dynamic>? mode,
    this.targetColumn,
  }) : mode = mode ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'targetColumn': ?targetColumn,
    };
  }

  factory FeatureImportanceSettings.fromMap(Map<String, dynamic> map) {
    return FeatureImportanceSettings(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetColumn: (() { final guardedValue = map['targetColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
