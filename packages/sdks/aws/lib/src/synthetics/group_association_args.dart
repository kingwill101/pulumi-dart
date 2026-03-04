// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_group_association_group_association_args_doc}
/// The set of arguments for GroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_synthetics_group_association_group_association_args_doc}
class GroupAssociationArgs {
  /// ARN of the canary.
  final pulumi.Input<String> canaryArn;

  /// Name of the group that the canary will be associated with.
  final pulumi.Input<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupAssociationArgs].
  /// [canaryArn] ARN of the canary.
  /// [groupName] Name of the group that the canary will be associated with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupAssociationArgs({
    required this.canaryArn,
    required this.groupName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryArn': canaryArn,
      'groupName': groupName,
      'region': ?region,
    };
  }

  factory GroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GroupAssociationArgs(
      canaryArn: pulumi.Input.fromValue(map['canaryArn'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
