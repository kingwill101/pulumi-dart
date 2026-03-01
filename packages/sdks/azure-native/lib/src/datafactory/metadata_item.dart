// ignore_for_file: unused_element, unnecessary_cast


/// Specify the name and value of custom metadata item.
class MetadataItem {
  /// Metadata item key name. Type: string (or Expression with resultType string).
  final dynamic name;
  /// Metadata item value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [MetadataItem].
  /// [name] Metadata item key name. Type: string (or Expression with resultType string).
  /// [value] Metadata item value. Type: string (or Expression with resultType string).
  MetadataItem({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MetadataItem.fromMap(Map<String, dynamic> map) {
    return MetadataItem(
      name: map['name'] == null ? null : map['name'],
      value: map['value'] == null ? null : map['value'],
    );
  }
}

