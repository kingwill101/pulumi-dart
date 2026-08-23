// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupTag {
  /// Key
  final pulumi.Input<String> key;
  /// Enables propagation of the tag to
  /// Amazon EC2 instances launched via this ASG
  ///
  /// To declare multiple tags, additional `tag` blocks can be specified.
  ///
  /// &gt; **NOTE:** Other AWS APIs may automatically add special tags to their associated Auto Scaling Group for management purposes, such as ECS Capacity Providers adding the `AmazonECSManaged` tag. These generally should be included in the configuration so the provider does not attempt to remove them and so if the `minSize` was greater than zero on creation, that these tag(s) are applied to any initial EC2 Instances in the Auto Scaling Group. If these tag(s) were missing in the Auto Scaling Group configuration on creation, affected EC2 Instances missing the tags may require manual intervention of adding the tags to ensure they work properly with the other AWS service.
  final pulumi.Input<bool> propagateAtLaunch;
  /// Value
  final pulumi.Input<String> value;

  /// Creates a new [GroupTag].
  /// [key] Key
  /// [propagateAtLaunch] Enables propagation of the tag to
  /// [value] Value
  const GroupTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'propagateAtLaunch': propagateAtLaunch,
      'value': value,
    };
  }

  factory GroupTag.fromMap(Map<String, dynamic> map) {
    return GroupTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      propagateAtLaunch: pulumi.Input.fromValue(map['propagateAtLaunch'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
