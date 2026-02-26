// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoIntArrayResponse {
  final List<String> values;

  EnterpriseCrmEventbusProtoIntArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory EnterpriseCrmEventbusProtoIntArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntArrayResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
