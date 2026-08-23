// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisParametersStringParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [AnalysisParametersStringParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  const AnalysisParametersStringParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory AnalysisParametersStringParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersStringParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
