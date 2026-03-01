// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleParameterArrayResponse {
  final List<double> doubleValues;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleParameterArrayResponse].
  /// [doubleValues] Required.
  EnterpriseCrmEventbusProtoDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'doubleValues': doubleValues};
  }

  factory EnterpriseCrmEventbusProtoDoubleParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoDoubleParameterArrayResponse(
      doubleValues: (map['doubleValues'] as List).cast<double>(),
    );
  }
}
