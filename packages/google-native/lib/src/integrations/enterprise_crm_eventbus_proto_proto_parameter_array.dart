// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusProtoProtoParameterArray {
  final List<Map<String, String>>? protoValues;

  /// Creates a new [EnterpriseCrmEventbusProtoProtoParameterArray].
  /// [protoValues] Optional.
  EnterpriseCrmEventbusProtoProtoParameterArray({
    this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': ?protoValues,
    };
  }

  factory EnterpriseCrmEventbusProtoProtoParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoProtoParameterArray(
      protoValues: map['protoValues'] == null ? null : (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}

