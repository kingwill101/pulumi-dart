// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray {
  final List<Map<String, String>>? protoValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoProtoParameterArray].
  /// [protoValues] Optional.
  EnterpriseCrmFrontendsEventbusProtoProtoParameterArray({this.protoValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'protoValues': ?protoValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoProtoParameterArray(
      protoValues: map['protoValues'] == null
          ? null
          : (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}
