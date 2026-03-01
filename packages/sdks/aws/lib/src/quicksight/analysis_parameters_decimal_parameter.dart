// ignore_for_file: unused_element, unnecessary_cast


class AnalysisParametersDecimalParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<double> values;

  /// Creates a new [AnalysisParametersDecimalParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  AnalysisParametersDecimalParameter({
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
      name: map['name'] as String,
      values: (map['values'] as List).cast<double>(),
    );
  }
}

