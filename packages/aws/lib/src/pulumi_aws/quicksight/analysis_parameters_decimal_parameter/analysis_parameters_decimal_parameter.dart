// ignore_for_file: unused_element, unnecessary_cast

class AnalysisParametersDecimalParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<double> values;

  AnalysisParametersDecimalParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory AnalysisParametersDecimalParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersDecimalParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<double>(),
    );
  }
}
