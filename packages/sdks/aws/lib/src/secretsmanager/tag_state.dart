// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Tag name.
  final pulumi.Input<String>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the AWS Secrets Manager secret to tag.
  final pulumi.Input<String>? secretId;
  /// Tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [TagState].
  /// [key] Tag name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretId] ID of the AWS Secrets Manager secret to tag.
  /// [value] Tag value.
  TagState({
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretId,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretId = pulumi.Input.asOptionalInput<String>(secretId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'region': ?region,
      'secretId': ?secretId,
      'value': ?value,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretId: map['secretId'] == null ? null : pulumi.Output.create<String>(map['secretId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

