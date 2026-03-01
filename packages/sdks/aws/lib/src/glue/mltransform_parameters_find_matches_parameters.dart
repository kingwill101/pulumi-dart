// ignore_for_file: unused_element, unnecessary_cast


class MLTransformParametersFindMatchesParameters {
  /// The value that is selected when tuning your transform for a balance between accuracy and cost.
  final double? accuracyCostTradeOff;
  /// The value to switch on or off to force the output to match the provided labels from users.
  final bool? enforceProvidedLabels;
  /// The value selected when tuning your transform for a balance between precision and recall.
  final double? precisionRecallTradeOff;
  /// The name of a column that uniquely identifies rows in the source table.
  final String? primaryKeyColumnName;

  /// Creates a new [MLTransformParametersFindMatchesParameters].
  /// [accuracyCostTradeOff] The value that is selected when tuning your transform for a balance between accuracy and cost.
  /// [enforceProvidedLabels] The value to switch on or off to force the output to match the provided labels from users.
  /// [precisionRecallTradeOff] The value selected when tuning your transform for a balance between precision and recall.
  /// [primaryKeyColumnName] The name of a column that uniquely identifies rows in the source table.
  MLTransformParametersFindMatchesParameters({
    this.accuracyCostTradeOff,
    this.enforceProvidedLabels,
    this.precisionRecallTradeOff,
    this.primaryKeyColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accuracyCostTradeOff': ?accuracyCostTradeOff,
      'enforceProvidedLabels': ?enforceProvidedLabels,
      'precisionRecallTradeOff': ?precisionRecallTradeOff,
      'primaryKeyColumnName': ?primaryKeyColumnName,
    };
  }

  factory MLTransformParametersFindMatchesParameters.fromMap(Map<String, dynamic> map) {
    return MLTransformParametersFindMatchesParameters(
      accuracyCostTradeOff: map['accuracyCostTradeOff'] == null ? null : map['accuracyCostTradeOff'] as double,
      enforceProvidedLabels: map['enforceProvidedLabels'] == null ? null : map['enforceProvidedLabels'] as bool,
      precisionRecallTradeOff: map['precisionRecallTradeOff'] == null ? null : map['precisionRecallTradeOff'] as double,
      primaryKeyColumnName: map['primaryKeyColumnName'] == null ? null : map['primaryKeyColumnName'] as String,
    );
  }
}

