// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupAssociation.
class GroupAssociationArgs {
  /// ARN of the canary.
  final Input<String> canaryArn;

  /// Name of the group that the canary will be associated with.
  final Input<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      canaryArn: Input.asInput<String>(map['canaryArn']),
      groupName: Input.asInput<String>(map['groupName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
