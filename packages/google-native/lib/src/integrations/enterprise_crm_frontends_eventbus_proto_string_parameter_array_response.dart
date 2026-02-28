// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse {
  final List<String> stringValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse].
  /// [stringValues] Required.
  EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stringValues'] = stringValues;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse(
      stringValues: (map['stringValues'] as List).cast<String>(),
    );
  }
}
