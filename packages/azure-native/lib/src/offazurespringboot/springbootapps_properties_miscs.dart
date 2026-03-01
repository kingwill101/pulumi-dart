// ignore_for_file: unused_element, unnecessary_cast


class SpringbootappsPropertiesMiscs {
  /// The miscs. key.
  final String key;
  /// The miscs. value.
  final String? value;

  /// Creates a new [SpringbootappsPropertiesMiscs].
  /// [key] The miscs. key.
  /// [value] The miscs. value.
  SpringbootappsPropertiesMiscs({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory SpringbootappsPropertiesMiscs.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesMiscs(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

