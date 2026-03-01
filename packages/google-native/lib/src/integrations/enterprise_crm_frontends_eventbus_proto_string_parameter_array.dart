// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoStringParameterArray {
  final List<String>? stringValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoStringParameterArray].
  /// [stringValues] Optional.
  EnterpriseCrmFrontendsEventbusProtoStringParameterArray({this.stringValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValues': ?stringValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoStringParameterArray(
      stringValues: map['stringValues'] == null
          ? null
          : (map['stringValues'] as List).cast<String>(),
    );
  }
}
