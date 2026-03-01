// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_tag_value_args_doc}
/// The set of arguments for TagValue.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_tag_value_args_doc}
class TagValueArgs {
  /// Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  final pulumi.Input<String>? description;

  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  final pulumi.Input<String>? etag;

  /// Immutable. Resource name for TagValue in the format `tagValues/456`.
  final pulumi.Input<String>? name;

  /// Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  final pulumi.Input<String>? parent;

  /// Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<String> shortName;

  /// Creates a new [TagValueArgs].
  /// [description] Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  /// [etag] Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  /// [name] Immutable. Resource name for TagValue in the format `tagValues/456`.
  /// [parent] Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  /// [shortName] Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  TagValueArgs({
    String? description,
    String? etag,
    String? name,
    String? parent,
    required String shortName,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       name = pulumi.Input.asOptionalInput<String>(name),
       parent = pulumi.Input.asOptionalInput<String>(parent),
       shortName = pulumi.Input.asInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'shortName': shortName,
    };
  }

  factory TagValueArgs.fromMap(Map<String, dynamic> map) {
    return TagValueArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      shortName: map['shortName'] as String,
    );
  }
}
