// ignore_for_file: unused_element, unnecessary_cast

class AnalysisParametersIntegerParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<int> values;

  AnalysisParametersIntegerParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory AnalysisParametersIntegerParameter.fromMap(Map<String, dynamic> map) {
    return AnalysisParametersIntegerParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<int>(),
    );
  }
}
