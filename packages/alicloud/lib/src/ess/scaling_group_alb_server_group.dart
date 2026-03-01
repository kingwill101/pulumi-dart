// ignore_for_file: unused_element, unnecessary_cast


class ScalingGroupAlbServerGroup {
  /// The ID of ALB server group.
  final String? albServerGroupId;
  /// The port number used by an ECS instance after Auto Scaling adds the ECS instance to ALB server group.
  final int? port;
  /// The weight of the ECS instance as a backend server after Auto Scaling adds the ECS instance to ALB server group.
  final int? weight;

  /// Creates a new [ScalingGroupAlbServerGroup].
  /// [albServerGroupId] The ID of ALB server group.
  /// [port] The port number used by an ECS instance after Auto Scaling adds the ECS instance to ALB server group.
  /// [weight] The weight of the ECS instance as a backend server after Auto Scaling adds the ECS instance to ALB server group.
  ScalingGroupAlbServerGroup({
    this.albServerGroupId,
    this.port,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albServerGroupId': ?albServerGroupId,
      'port': ?port,
      'weight': ?weight,
    };
  }

  factory ScalingGroupAlbServerGroup.fromMap(Map<String, dynamic> map) {
    return ScalingGroupAlbServerGroup(
      albServerGroupId: map['albServerGroupId'] == null ? null : map['albServerGroupId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

