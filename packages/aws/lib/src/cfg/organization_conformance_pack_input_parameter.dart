// ignore_for_file: unused_element, unnecessary_cast


class OrganizationConformancePackInputParameter {
  /// The input key.
  final String parameterName;
  /// The input value.
  final String parameterValue;

  /// Creates a new [OrganizationConformancePackInputParameter].
  /// [parameterName] The input key.
  /// [parameterValue] The input value.
  OrganizationConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory OrganizationConformancePackInputParameter.fromMap(Map<String, dynamic> map) {
    return OrganizationConformancePackInputParameter(
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

