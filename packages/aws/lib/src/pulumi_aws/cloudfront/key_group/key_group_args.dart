// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyGroup.
class KeyGroupArgs {
  /// A comment to describe the key group..
  final Input<String>? comment;

  /// A list of the identifiers of the public keys in the key group.
  final Input<List<String>> items;

  /// A name to identify the key group.
  final Input<String>? name;

  KeyGroupArgs({
    this.comment,
    required this.items,
    this.name,
  });

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
      comment: Input.asOptionalInput<String>(map['comment']),
      items: Input.asInput<List<String>>(map['items']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
