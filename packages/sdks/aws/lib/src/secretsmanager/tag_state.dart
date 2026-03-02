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
    this.key,
    this.region,
    this.secretId,
    this.value,
  });

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
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      secretId: map['secretId'] == null ? null : ((map['secretId'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

