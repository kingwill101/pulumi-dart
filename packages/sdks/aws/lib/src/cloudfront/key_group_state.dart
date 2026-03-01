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
    pulumi.Output<String>? comment,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? items,
    pulumi.Output<String>? name,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      items = pulumi.Input.asOptionalInput<List<String>>(items),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      items: map['items'] == null ? null : pulumi.Output.create<List<String>>((map['items'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

