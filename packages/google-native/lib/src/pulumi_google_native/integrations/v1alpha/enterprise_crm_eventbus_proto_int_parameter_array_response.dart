// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoIntParameterArrayResponse {
  final List<String> intValues;

  EnterpriseCrmEventbusProtoIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intValues'] = intValues;
    return map;
  }

  factory EnterpriseCrmEventbusProtoIntParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntParameterArrayResponse(
      intValues: (map['intValues'] as List).cast<String>(),
    );
  }
}
