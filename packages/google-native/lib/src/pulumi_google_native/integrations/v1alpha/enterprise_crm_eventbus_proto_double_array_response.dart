// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleArrayResponse {
  final List<double> values;

  EnterpriseCrmEventbusProtoDoubleArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory EnterpriseCrmEventbusProtoDoubleArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleArrayResponse(
      values: (map['values'] as List).cast<double>(),
    );
  }
}
