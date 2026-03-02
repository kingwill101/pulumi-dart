// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetaTagsTag {
  /// The type of the resource tags.
  final pulumi.Input<String> category;
  /// The name of the key.
  final pulumi.Input<String> keyName;
  /// The name of the value.
  final pulumi.Input<String> valueName;

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
      category: (map['category'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      valueName: (map['valueName'] as String).input(),
    );
  }
}

