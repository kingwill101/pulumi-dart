// ignore_for_file: unused_element, unnecessary_cast


/// SSIS execution parameter.
class SSISExecutionParameterResponse {
  /// SSIS package execution parameter value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [SSISExecutionParameterResponse].
  /// [value] SSIS package execution parameter value. Type: string (or Expression with resultType string).
  SSISExecutionParameterResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory SSISExecutionParameterResponse.fromMap(Map<String, dynamic> map) {
    return SSISExecutionParameterResponse(
      value: map['value'],
    );
  }
}

