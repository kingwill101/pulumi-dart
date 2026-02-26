// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleParameterArrayResponse {
  final List<double> doubleValues;

  EnterpriseCrmEventbusProtoDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['doubleValues'] = doubleValues;
    return map;
  }

  factory EnterpriseCrmEventbusProtoDoubleParameterArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleParameterArrayResponse(
      doubleValues: (map['doubleValues'] as List).cast<double>(),
    );
  }
}
