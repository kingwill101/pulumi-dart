// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Resource.
class ResourceArgs4 {
  /// Name or ARN of the resource group to add resources to.
  final Input<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the resource to be added to the group.
  final Input<String> resourceArn;

  ResourceArgs4({
    required this.groupArn,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupArn'] = groupArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ResourceArgs4.fromMap(Map<String, dynamic> map) {
    return ResourceArgs4(
      groupArn: Input.asInput<String>(map['groupArn']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
    );
  }
}
