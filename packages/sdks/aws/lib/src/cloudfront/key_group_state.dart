// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyGroup resources.
class KeyGroupState {
  /// A comment to describe the key group..
  final pulumi.Input<String>? comment;
  /// The identifier for this version of the key group.
  final pulumi.Input<String>? etag;
  /// A list of the identifiers of the public keys in the key group.
  final pulumi.Input<List<String>>? items;
  /// A name to identify the key group.
  final pulumi.Input<String>? name;

  /// Creates a new [KeyGroupState].
  /// [comment] A comment to describe the key group..
  /// [etag] The identifier for this version of the key group.
  /// [items] A list of the identifiers of the public keys in the key group.
  /// [name] A name to identify the key group.
  KeyGroupState({
    this.comment,
    this.etag,
    this.items,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'etag': ?etag,
      'items': ?items,
      'name': ?name,
    };
  }

  factory KeyGroupState.fromMap(Map<String, dynamic> map) {
    return KeyGroupState(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      items: map['items'] == null ? null : ((map['items'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

