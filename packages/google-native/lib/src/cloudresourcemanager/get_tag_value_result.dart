// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTagValue.
class GetTagValueResult {
  /// Creation time.
  final String createTime;

  /// Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  final String description;

  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  final String etag;

  /// Immutable. Resource name for TagValue in the format `tagValues/456`.
  final String name;

  /// The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  final String namespacedName;

  /// Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  final String parent;

  /// Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final String shortName;

  /// Update time.
  final String updateTime;

  /// Creates a new [GetTagValueResult].
  /// [createTime] Creation time.
  /// [description] Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  /// [etag] Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  /// [name] Immutable. Resource name for TagValue in the format `tagValues/456`.
  /// [namespacedName] The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  /// [parent] Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  /// [shortName] Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [updateTime] Update time.
  GetTagValueResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['name'] = name;
    map['namespacedName'] = namespacedName;
    map['parent'] = parent;
    map['shortName'] = shortName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTagValueResult.fromMap(Map<String, dynamic> map) {
    return GetTagValueResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
