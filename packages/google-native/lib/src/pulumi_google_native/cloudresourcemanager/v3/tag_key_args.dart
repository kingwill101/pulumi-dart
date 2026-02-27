// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tag_key_purpose.dart';

/// The set of arguments for TagKey.
class TagKeyArgs {
  /// Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  final Input<String>? description;

  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  final Input<String>? etag;

  /// Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  final Input<String>? name;

  /// Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  final Input<String>? parent;

  /// Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  final Input<TagKeyPurpose>? purpose;

  /// Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  final Input<Map<String, String>>? purposeData;

  /// Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Input<String> shortName;

  TagKeyArgs({
    this.description,
    this.etag,
    this.name,
    this.parent,
    this.purpose,
    this.purposeData,
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
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = Input.mapOptionalInputValue<TagKeyPurpose, String>(
          purposeValue, (value) => value.value);
    }
    final purposeDataValue = purposeData;
    if (purposeDataValue != null) {
      map['purposeData'] = purposeDataValue;
    }
    map['shortName'] = shortName;
    return map;
  }

  factory TagKeyArgs.fromMap(Map<String, dynamic> map) {
    return TagKeyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asOptionalInput<String>(map['parent']),
      purpose: Input.asOptionalInput<TagKeyPurpose>(map['purpose']),
      purposeData:
          Input.asOptionalInput<Map<String, String>>(map['purposeData']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
