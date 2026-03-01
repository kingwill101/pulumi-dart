// ignore_for_file: unused_element, unnecessary_cast


class GetMetaTagsTag {
  /// The type of the resource tags.
  final String category;
  /// The name of the key.
  final String keyName;
  /// The name of the value.
  final String valueName;

  /// Creates a new [GetMetaTagsTag].
  /// [category] The type of the resource tags.
  /// [keyName] The name of the key.
  /// [valueName] The name of the value.
  GetMetaTagsTag({
    required this.category,
    required this.keyName,
    required this.valueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'keyName': keyName,
      'valueName': valueName,
    };
  }

  factory GetMetaTagsTag.fromMap(Map<String, dynamic> map) {
    return GetMetaTagsTag(
      category: map['category'] as String,
      keyName: map['keyName'] as String,
      valueName: map['valueName'] as String,
    );
  }
}

