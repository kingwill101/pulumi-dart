// ignore_for_file: unused_element, unnecessary_cast


class DataMaskingEntity {
  /// Data masking mode.
  final String? mode;
  /// The name of an entity to mask (e.g. a name of a header or a query parameter).
  final String? value;

  /// Creates a new [DataMaskingEntity].
  /// [mode] Data masking mode.
  /// [value] The name of an entity to mask (e.g. a name of a header or a query parameter).
  DataMaskingEntity({
    this.mode,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'value': ?value,
    };
  }

  factory DataMaskingEntity.fromMap(Map<String, dynamic> map) {
    return DataMaskingEntity(
      mode: map['mode'] == null ? null : map['mode'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

