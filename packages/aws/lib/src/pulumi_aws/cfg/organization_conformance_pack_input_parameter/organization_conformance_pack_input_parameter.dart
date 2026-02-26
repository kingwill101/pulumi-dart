// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConformancePackInputParameter {
  /// The input key.
  final String parameterName;

  /// The input value.
  final String parameterValue;

  OrganizationConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameterName'] = parameterName;
    map['parameterValue'] = parameterValue;
    return map;
  }

  factory OrganizationConformancePackInputParameter.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConformancePackInputParameter(
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}
