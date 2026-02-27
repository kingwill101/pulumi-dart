// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tag.
class TagDynamodbArgs {
  /// Tag name.
  final pulumi.Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  final pulumi.Input<String> resourceArn;

  /// Tag value.
  final pulumi.Input<String> value;

  TagDynamodbArgs({
    required this.key,
    this.region,
    required this.resourceArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['value'] = value;
    return map;
  }

  factory TagDynamodbArgs.fromMap(Map<String, dynamic> map) {
    return TagDynamodbArgs(
      key: pulumi.Input.asInput<String>(map['key']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
