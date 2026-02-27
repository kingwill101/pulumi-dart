// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GroupAssociation.
class GroupAssociationArgs {
  /// ARN of the canary.
  final pulumi.Input<String> canaryArn;

  /// Name of the group that the canary will be associated with.
  final pulumi.Input<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GroupAssociationArgs({
    required this.canaryArn,
    required this.groupName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canaryArn'] = canaryArn;
    map['groupName'] = groupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GroupAssociationArgs(
      canaryArn: pulumi.Input.asInput<String>(map['canaryArn']),
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
