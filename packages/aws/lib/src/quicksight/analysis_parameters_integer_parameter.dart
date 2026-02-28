// ignore_for_file: unused_element, unnecessary_cast


class AnalysisParametersIntegerParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<int> values;

  /// Creates a new [AnalysisParametersIntegerParameter].
  /// [name] Display name for the analysis.
  /// [values] Required.
  AnalysisParametersIntegerParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory AnalysisParametersIntegerParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersIntegerParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<int>(),
    );
  }
}

