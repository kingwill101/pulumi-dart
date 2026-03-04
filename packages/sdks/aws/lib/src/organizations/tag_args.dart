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
  TagArgs({required this.key, required this.resourceId, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'resourceId': resourceId,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      key: pulumi.Input.fromValue(map['key'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
