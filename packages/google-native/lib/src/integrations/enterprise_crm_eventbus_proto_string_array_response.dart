// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoStringArrayResponse {
  final List<String> values;

  /// Creates a new [EnterpriseCrmEventbusProtoStringArrayResponse].
  /// [values] Required.
  EnterpriseCrmEventbusProtoStringArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory EnterpriseCrmEventbusProtoStringArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringArrayResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
