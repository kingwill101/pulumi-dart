// ignore_for_file: unused_element, unnecessary_cast

class AnalysisParametersDateTimeParameter {
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final String name;
  final List<String> values;

  AnalysisParametersDateTimeParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory AnalysisParametersDateTimeParameter.fromMap(
      Map<String, dynamic> map) {
    return AnalysisParametersDateTimeParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
