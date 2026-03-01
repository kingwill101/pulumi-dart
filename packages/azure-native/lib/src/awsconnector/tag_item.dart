// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TagItem
class TagItem {
  /// Property key
  final String? key;
  /// Property value
  final String? value;

  /// Creates a new [TagItem].
  /// [key] Property key
  /// [value] Property value
  TagItem({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagItem.fromMap(Map<String, dynamic> map) {
    return TagItem(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

