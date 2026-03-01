// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_organizations_tag_tag_args_doc}
class TagArgs {
  /// Tag name.
  final pulumi.Input<String> key;

  /// Id of the Organizations resource to tag.
  final pulumi.Input<String> resourceId;

  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [key] Tag name.
  /// [resourceId] Id of the Organizations resource to tag.
  /// [value] Tag value.
  TagArgs({
    required String key,
    required String resourceId,
    required String value,
  }) : key = pulumi.Input.asInput<String>(key),
       resourceId = pulumi.Input.asInput<String>(resourceId),
       value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'resourceId': resourceId,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: map['key'] as String,
      resourceId: map['resourceId'] as String,
      value: map['value'] as String,
    );
  }
}
