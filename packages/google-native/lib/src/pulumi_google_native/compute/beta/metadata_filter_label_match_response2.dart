// ignore_for_file: unused_element, unnecessary_cast

/// MetadataFilter label name value pairs that are expected to match corresponding labels presented as metadata to the load balancer.
class MetadataFilterLabelMatchResponse2 {
  /// Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  final String name;

  /// The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  final String value;

  MetadataFilterLabelMatchResponse2({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory MetadataFilterLabelMatchResponse2.fromMap(Map<String, dynamic> map) {
    return MetadataFilterLabelMatchResponse2(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
