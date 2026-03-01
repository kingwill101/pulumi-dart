// ignore_for_file: unused_element, unnecessary_cast

/// Preview: Parameter value applied to the aggregation function. This is a preview feature and may be subject to change before final release.
class ParameterResponse {
  /// A floating-point parameter value.
  final double doubleValue;

  /// An integer parameter value.
  final String intValue;

  /// Creates a new [ParameterResponse].
  /// [doubleValue] A floating-point parameter value.
  /// [intValue] An integer parameter value.
  ParameterResponse({required this.doubleValue, required this.intValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'doubleValue': doubleValue, 'intValue': intValue};
  }

  factory ParameterResponse.fromMap(Map<String, dynamic> map) {
    return ParameterResponse(
      doubleValue: map['doubleValue'] as double,
      intValue: map['intValue'] as String,
    );
  }
}
