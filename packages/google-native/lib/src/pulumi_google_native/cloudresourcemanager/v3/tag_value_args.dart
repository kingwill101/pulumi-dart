// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for TagValue.
class TagValueArgs {
  /// Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  final Input<String>? description;

  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  final Input<String>? etag;

  /// Immutable. Resource name for TagValue in the format `tagValues/456`.
  final Input<String>? name;

  /// Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  final Input<String>? parent;

  /// Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<String> shortName;

  TagValueArgs({
    this.description,
    this.etag,
    this.name,
    this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    map['shortName'] = shortName;
    return map;
  }

  factory TagValueArgs.fromMap(Map<String, dynamic> map) {
    return TagValueArgs(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asOptionalInput<String>(map['parent']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
