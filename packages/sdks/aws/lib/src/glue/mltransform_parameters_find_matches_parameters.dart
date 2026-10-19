// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLTransformParametersFindMatchesParameters {
  /// Value that is selected when tuning your transform for a balance between accuracy and cost.
  final pulumi.Input<double?>? accuracyCostTradeOff;
  /// Value to switch on or off to force the output to match the provided labels from users.
  final pulumi.Input<bool?>? enforceProvidedLabels;
  /// Value selected when tuning your transform for a balance between precision and recall.
  final pulumi.Input<double?>? precisionRecallTradeOff;
  /// Name of a column that uniquely identifies rows in the source table.
  final pulumi.Input<String?>? primaryKeyColumnName;

  /// Creates a new [MLTransformParametersFindMatchesParameters].
  /// [accuracyCostTradeOff] Value that is selected when tuning your transform for a balance between accuracy and cost.
  /// [enforceProvidedLabels] Value to switch on or off to force the output to match the provided labels from users.
  /// [precisionRecallTradeOff] Value selected when tuning your transform for a balance between precision and recall.
  /// [primaryKeyColumnName] Name of a column that uniquely identifies rows in the source table.
  const MLTransformParametersFindMatchesParameters({
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
      accuracyCostTradeOff: (() { final guardedValue = map['accuracyCostTradeOff']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enforceProvidedLabels: (() { final guardedValue = map['enforceProvidedLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      precisionRecallTradeOff: (() { final guardedValue = map['precisionRecallTradeOff']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      primaryKeyColumnName: (() { final guardedValue = map['primaryKeyColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
