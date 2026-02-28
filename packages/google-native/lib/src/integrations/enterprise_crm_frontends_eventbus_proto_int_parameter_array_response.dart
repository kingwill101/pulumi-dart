// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse {
  final List<String> intValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse].
  /// [intValues] Required.
  EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intValues'] = intValues;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse(
      intValues: (map['intValues'] as List).cast<String>(),
    );
  }
}
