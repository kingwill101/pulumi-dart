// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyGroup.
class KeyGroupArgs {
  /// A comment to describe the key group..
  final pulumi.Input<String>? comment;

  /// A list of the identifiers of the public keys in the key group.
  final pulumi.Input<List<String>> items;

  /// A name to identify the key group.
  final pulumi.Input<String>? name;

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
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      items: pulumi.Input.asInput<List<String>>(map['items']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
