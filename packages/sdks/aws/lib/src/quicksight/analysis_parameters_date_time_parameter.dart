// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisParametersDateTimeParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [AnalysisParametersDateTimeParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  AnalysisParametersDateTimeParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory AnalysisParametersDateTimeParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersDateTimeParameter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

