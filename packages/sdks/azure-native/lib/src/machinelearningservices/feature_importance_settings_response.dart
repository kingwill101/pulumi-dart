// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureImportanceSettingsResponse {
  /// The mode of operation for computing feature importance.
  final pulumi.Input<String>? mode;
  /// The name of the target column within the input data asset.
  final pulumi.Input<String>? targetColumn;

  /// Creates a new [FeatureImportanceSettingsResponse].
  /// [mode] The mode of operation for computing feature importance.
  /// [targetColumn] The name of the target column within the input data asset.
  FeatureImportanceSettingsResponse({
    this.mode,
    this.targetColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'targetColumn': ?targetColumn,
    };
  }

  factory FeatureImportanceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FeatureImportanceSettingsResponse(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      targetColumn: map['targetColumn'] == null ? null : (map['targetColumn']! as String).input(),
    );
  }
}

