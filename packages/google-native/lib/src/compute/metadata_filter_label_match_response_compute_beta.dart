// ignore_for_file: unused_element, unnecessary_cast

/// MetadataFilter label name value pairs that are expected to match corresponding labels presented as metadata to the load balancer.
class MetadataFilterLabelMatchResponseComputeBeta {
  /// Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  final String name;

  /// The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  final String value;

  /// Creates a new [MetadataFilterLabelMatchResponseComputeBeta].
  /// [name] Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  /// [value] The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  MetadataFilterLabelMatchResponseComputeBeta({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory MetadataFilterLabelMatchResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetadataFilterLabelMatchResponseComputeBeta(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
