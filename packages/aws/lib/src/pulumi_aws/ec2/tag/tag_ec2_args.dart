// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tag.
class TagEc2Args {
  /// The tag name.
  final pulumi.Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the EC2 resource to manage the tag for.
  final pulumi.Input<String> resourceId;

  /// The value of the tag.
  final pulumi.Input<String> value;

  TagEc2Args({
    required this.key,
    this.region,
    required this.resourceId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    map['value'] = value;
    return map;
  }

  factory TagEc2Args.fromMap(Map<String, dynamic> map) {
    return TagEc2Args(
      key: pulumi.Input.asInput<String>(map['key']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
