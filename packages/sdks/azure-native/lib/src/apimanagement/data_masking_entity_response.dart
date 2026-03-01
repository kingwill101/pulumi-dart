// ignore_for_file: unused_element, unnecessary_cast


class DataMaskingEntityResponse {
  /// Data masking mode.
  final String? mode;
  /// The name of an entity to mask (e.g. a name of a header or a query parameter).
  final String? value;

  /// Creates a new [DataMaskingEntityResponse].
  /// [mode] Data masking mode.
  /// [value] The name of an entity to mask (e.g. a name of a header or a query parameter).
  DataMaskingEntityResponse({
    this.mode,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'value': ?value,
    };
  }

  factory DataMaskingEntityResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingEntityResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

