// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse {
  final List<Map<String, String>> protoValues;

  EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse({
    required this.protoValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['protoValues'] = protoValues;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse(
      protoValues: (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}
