// ignore_for_file: unused_element, unnecessary_cast


/// MetadataFilter label name value pairs that are expected to match corresponding labels presented as metadata to the load balancer.
class MetadataFilterLabelMatchResponseComputeV1 {
  /// Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  final String name;
  /// The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  final String value;

  /// Creates a new [MetadataFilterLabelMatchResponseComputeV1].
  /// [name] Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  /// [value] The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  MetadataFilterLabelMatchResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory MetadataFilterLabelMatchResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return MetadataFilterLabelMatchResponseComputeV1(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

