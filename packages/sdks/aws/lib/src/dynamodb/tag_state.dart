// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Tag name.
  final pulumi.Input<String>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  final pulumi.Input<String>? resourceArn;
  /// Tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [TagState].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  /// [value] Tag value.
  TagState({
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'value': ?value,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

