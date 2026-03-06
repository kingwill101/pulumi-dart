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
  const KeyGroupArgs({
    this.comment,
    required this.items,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'items': items,
      'name': ?name,
    };
  }

  factory KeyGroupArgs.fromMap(Map<String, dynamic> map) {
    return KeyGroupArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

