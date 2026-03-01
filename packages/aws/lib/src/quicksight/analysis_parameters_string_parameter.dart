// ignore_for_file: unused_element, unnecessary_cast


class AnalysisParametersStringParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<String> values;

  /// Creates a new [AnalysisParametersStringParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  AnalysisParametersStringParameter({
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
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

