// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoStringParameterArrayResponse {
  final List<String> stringValues;

  EnterpriseCrmEventbusProtoStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stringValues'] = stringValues;
    return map;
  }

  factory EnterpriseCrmEventbusProtoStringParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringParameterArrayResponse(
      stringValues: (map['stringValues'] as List).cast<String>(),
    );
  }
}
