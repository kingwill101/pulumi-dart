// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Tag.
class TagArgs3 {
  /// The tag name.
  final Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the EC2 resource to manage the tag for.
  final Input<String> resourceId;

  /// The value of the tag.
  final Input<String> value;

  TagArgs3({
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

  factory TagArgs3.fromMap(Map<String, dynamic> map) {
    return TagArgs3(
      key: Input.asInput<String>(map['key']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
