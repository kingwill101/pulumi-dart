// ignore_for_file: unused_element, unnecessary_cast

/// MetadataFilter label name value pairs that are expected to match corresponding labels presented as metadata to the load balancer.
class MetadataFilterLabelMatchComputeBeta {
  /// Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  final String? name;

  /// The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  final String? value;

  /// Creates a new [MetadataFilterLabelMatchComputeBeta].
  /// [name] Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  /// [value] The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  MetadataFilterLabelMatchComputeBeta({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory MetadataFilterLabelMatchComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return MetadataFilterLabelMatchComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
