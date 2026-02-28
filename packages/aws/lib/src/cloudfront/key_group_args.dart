// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_key_group_key_group_args_doc}
/// The set of arguments for KeyGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_key_group_key_group_args_doc}
class KeyGroupArgs {
  /// A comment to describe the key group..
  final pulumi.Input<String>? comment;

  /// A list of the identifiers of the public keys in the key group.
  final pulumi.Input<List<String>> items;

  /// A name to identify the key group.
  final pulumi.Input<String>? name;

  /// Creates a new [KeyGroupArgs].
  /// [comment] A comment to describe the key group..
  /// [items] A list of the identifiers of the public keys in the key group.
  /// [name] A name to identify the key group.
  KeyGroupArgs({
    String? comment,
    required List<String> items,
    String? name,
  })  : comment = pulumi.Input.asOptionalInput<String>(comment),
        items = pulumi.Input.asInput<List<String>>(items),
        name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['items'] = items;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory KeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return KeyGroupArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      items: (map['items'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
