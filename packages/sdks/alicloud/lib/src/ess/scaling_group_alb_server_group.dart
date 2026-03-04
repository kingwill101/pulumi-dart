// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingGroupAlbServerGroup {
  /// The ID of ALB server group.
  final pulumi.Input<String>? albServerGroupId;

  /// The port number used by an ECS instance after Auto Scaling adds the ECS instance to ALB server group.
  final pulumi.Input<int>? port;

  /// The weight of the ECS instance as a backend server after Auto Scaling adds the ECS instance to ALB server group.
  final pulumi.Input<int>? weight;

  /// Creates a new [ScalingGroupAlbServerGroup].
  /// [albServerGroupId] The ID of ALB server group.
  /// [port] The port number used by an ECS instance after Auto Scaling adds the ECS instance to ALB server group.
  /// [weight] The weight of the ECS instance as a backend server after Auto Scaling adds the ECS instance to ALB server group.
  ScalingGroupAlbServerGroup({this.albServerGroupId, this.port, this.weight});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albServerGroupId': ?albServerGroupId,
      'port': ?port,
      'weight': ?weight,
    };
  }

  factory ScalingGroupAlbServerGroup.fromMap(Map<String, dynamic> map) {
    return ScalingGroupAlbServerGroup(
      albServerGroupId: (() {
        final guardedValue = map['albServerGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
