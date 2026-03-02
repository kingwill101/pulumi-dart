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
    this.key,
    this.region,
    this.resourceId,
    this.value,
  });

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
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

