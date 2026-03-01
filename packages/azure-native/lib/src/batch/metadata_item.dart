// ignore_for_file: unused_element, unnecessary_cast


/// The Batch service does not assign any meaning to this metadata; it is solely for the use of user code.
class MetadataItem {
  /// The name of the metadata item.
  final String name;
  /// The value of the metadata item.
  final String value;

  /// Creates a new [MetadataItem].
  /// [name] The name of the metadata item.
  /// [value] The value of the metadata item.
  MetadataItem({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory MetadataItem.fromMap(Map<String, dynamic> map) {
    return MetadataItem(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

