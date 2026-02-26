// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Tag.
class TagArgs7 {
  /// Tag name.
  final Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the Transfer Family resource to tag.
  final Input<String> resourceArn;

  /// Tag value.
  final Input<String> value;

  TagArgs7({
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

  factory TagArgs7.fromMap(Map<String, dynamic> map) {
    return TagArgs7(
      key: Input.asInput<String>(map['key']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
