// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Resource.
class ResourceResourcegroupsArgs {
  /// Name or ARN of the resource group to add resources to.
  final pulumi.Input<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the resource to be added to the group.
  final pulumi.Input<String> resourceArn;

  ResourceResourcegroupsArgs({
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

  factory ResourceResourcegroupsArgs.fromMap(Map<String, dynamic> map) {
    return ResourceResourcegroupsArgs(
      groupArn: pulumi.Input.asInput<String>(map['groupArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
