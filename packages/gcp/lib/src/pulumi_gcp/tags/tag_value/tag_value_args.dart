// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TagValue.
class TagValueArgs {
  /// User-assigned description of the TagValue. Must not exceed 256 characters.
  final Input<String>? description;

  /// Input only. The resource name of the new TagValue's parent. Must be of the form tagKeys/{tag_key_id}.
  final Input<String> parent;

  /// Input only. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final Input<String> shortName;

  TagValueArgs({
    this.description,
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['parent'] = parent;
    map['shortName'] = shortName;
    return map;
  }

  factory TagValueArgs.fromMap(Map<String, dynamic> map) {
    return TagValueArgs(
      description: Input.asOptionalInput<String>(map['description']),
      parent: Input.asInput<String>(map['parent']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
