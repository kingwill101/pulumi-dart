// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse {
  final List<double> doubleValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse].
  /// [doubleValues] Required.
  EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'doubleValues': doubleValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse(
      doubleValues: (map['doubleValues'] as List).cast<double>(),
    );
  }
}
