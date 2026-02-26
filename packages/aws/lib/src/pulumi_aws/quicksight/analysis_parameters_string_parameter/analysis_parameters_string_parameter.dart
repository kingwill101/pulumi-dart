// ignore_for_file: unused_element, unnecessary_cast

class AnalysisParametersStringParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<String> values;

  AnalysisParametersStringParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory AnalysisParametersStringParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersStringParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
