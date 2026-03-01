// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// The tag name.
  final pulumi.Input<String>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the EC2 resource to manage the tag for.
  final pulumi.Input<String>? resourceId;
  /// The value of the tag.
  final pulumi.Input<String>? value;

  /// Creates a new [TagState].
  /// [key] The tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the EC2 resource to manage the tag for.
  /// [value] The value of the tag.
  TagState({
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'region': ?region,
      'resourceId': ?resourceId,
      'value': ?value,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

