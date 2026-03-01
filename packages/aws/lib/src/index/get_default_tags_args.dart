// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_default_tags_get_default_tags_args_doc}
/// Arguments for getDefaultTags.
/// {@endtemplate}
/// {@macro pulumi_index_get_default_tags_get_default_tags_args_doc}
class GetDefaultTagsArgs {
  final pulumi.Input<String>? id;

  /// Creates a new [GetDefaultTagsArgs].
  /// [id] Optional.
  GetDefaultTagsArgs({String? id})
    : id = pulumi.Input.asOptionalInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory GetDefaultTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultTagsArgs(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
