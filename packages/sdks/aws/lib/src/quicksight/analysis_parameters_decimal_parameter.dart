// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisParametersDecimalParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<List<double>> values;

  /// Creates a new [AnalysisParametersDecimalParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  const AnalysisParametersDecimalParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory AnalysisParametersDecimalParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersDecimalParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}

