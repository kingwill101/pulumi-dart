// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_key_get_tag_key_args_doc}
/// Arguments for getTagKey.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_key_get_tag_key_args_doc}
class GetTagKeyArgs {
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final pulumi.Input<String> parent;

  /// The tag key's short_name.
  final pulumi.Input<String> shortName;

  /// Creates a new [GetTagKeyArgs].
  /// [parent] The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  /// [shortName] The tag key's short_name.
  GetTagKeyArgs({
    required String parent,
    required String shortName,
  })  : parent = pulumi.Input.asInput<String>(parent),
        shortName = pulumi.Input.asInput<String>(shortName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['shortName'] = shortName;
    return map;
  }

  factory GetTagKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyArgs(
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
    );
  }
}
