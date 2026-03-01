// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoStringParameterArrayResponse {
  final List<String> stringValues;

  /// Creates a new [EnterpriseCrmEventbusProtoStringParameterArrayResponse].
  /// [stringValues] Required.
  EnterpriseCrmEventbusProtoStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValues': stringValues};
  }

  factory EnterpriseCrmEventbusProtoStringParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoStringParameterArrayResponse(
      stringValues: (map['stringValues'] as List).cast<String>(),
    );
  }
}
