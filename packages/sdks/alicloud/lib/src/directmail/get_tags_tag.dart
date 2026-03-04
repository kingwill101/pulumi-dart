// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsTag {
  /// The ID of the tag.
  final pulumi.Input<String> id;

  /// The ID of the tag.
  final pulumi.Input<String> tagId;

  /// The name of the tag.
  final pulumi.Input<String> tagName;

  /// Creates a new [GetTagsTag].
  /// [id] The ID of the tag.
  /// [tagId] The ID of the tag.
  /// [tagName] The name of the tag.
  GetTagsTag({required this.id, required this.tagId, required this.tagName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'tagId': tagId, 'tagName': tagName};
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      id: pulumi.Input.fromValue(map['id'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
