// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleArrayResponse {
  final List<double> values;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleArrayResponse].
  /// [values] Required.
  EnterpriseCrmEventbusProtoDoubleArrayResponse({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory EnterpriseCrmEventbusProtoDoubleArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoDoubleArrayResponse(
      values: (map['values'] as List).cast<double>(),
    );
  }
}
