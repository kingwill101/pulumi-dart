// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Tag name.
  final pulumi.Input<String>? key;
  /// Id of the Organizations resource to tag.
  final pulumi.Input<String>? resourceId;
  /// Tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [TagState].
  /// [key] Tag name.
  /// [resourceId] Id of the Organizations resource to tag.
  /// [value] Tag value.
  TagState({
    pulumi.Output<String>? key,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'resourceId': ?resourceId,
      'value': ?value,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

