// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TagProperty
class TagPropertyResponse {
  /// The tag key.
  final pulumi.Input<String>? key;
  /// Set to ``true`` if you want CloudFormation to copy the tag to EC2 instances that are launched as part of the Auto Scaling group. Set to ``false`` if you want the tag attached only to the Auto Scaling group and not copied to any instances launched as part of the Auto Scaling group.
  final pulumi.Input<bool>? propagateAtLaunch;
  /// The tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [TagPropertyResponse].
  /// [key] The tag key.
  /// [propagateAtLaunch] Set to ``true`` if you want CloudFormation to copy the tag to EC2 instances that are launched as part of the Auto Scaling group. Set to ``false`` if you want the tag attached only to the Auto Scaling group and not copied to any instances launched as part of the Auto Scaling group.
  /// [value] The tag value.
  const TagPropertyResponse({
    this.key,
    this.propagateAtLaunch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'propagateAtLaunch': ?propagateAtLaunch,
      'value': ?value,
    };
  }

  factory TagPropertyResponse.fromMap(Map<String, dynamic> map) {
    return TagPropertyResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagateAtLaunch: (() { final guardedValue = map['propagateAtLaunch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

