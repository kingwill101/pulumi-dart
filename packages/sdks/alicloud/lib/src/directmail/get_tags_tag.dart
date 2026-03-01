// ignore_for_file: unused_element, unnecessary_cast


class GetTagsTag {
  /// The ID of the tag.
  final String id;
  /// The ID of the tag.
  final String tagId;
  /// The name of the tag.
  final String tagName;

  /// Creates a new [GetTagsTag].
  /// [id] The ID of the tag.
  /// [tagId] The ID of the tag.
  /// [tagName] The name of the tag.
  GetTagsTag({
    required this.id,
    required this.tagId,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tagId': tagId,
      'tagName': tagName,
    };
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      id: map['id'] as String,
      tagId: map['tagId'] as String,
      tagName: map['tagName'] as String,
    );
  }
}

