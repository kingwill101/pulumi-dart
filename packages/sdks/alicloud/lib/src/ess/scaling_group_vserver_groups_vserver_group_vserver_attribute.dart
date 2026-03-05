// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingGroupVServerGroupsVserverGroupVserverAttribute {
  /// The port will be used for VServer Group backend server.
  final pulumi.Input<int> port;
  /// ID of VServer Group.
  final pulumi.Input<String> vserverGroupId;
  /// The weight of an ECS instance attached to the VServer Group.
  final pulumi.Input<int> weight;

  /// Creates a new [ScalingGroupVServerGroupsVserverGroupVserverAttribute].
  /// [port] The port will be used for VServer Group backend server.
  /// [vserverGroupId] ID of VServer Group.
  /// [weight] The weight of an ECS instance attached to the VServer Group.
  ScalingGroupVServerGroupsVserverGroupVserverAttribute({
    required this.port,
    required this.vserverGroupId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'vserverGroupId': vserverGroupId,
      'weight': weight,
    };
  }

  factory ScalingGroupVServerGroupsVserverGroupVserverAttribute.fromMap(Map<String, dynamic> map) {
    return ScalingGroupVServerGroupsVserverGroupVserverAttribute(
      port: pulumi.Input.fromValue(map['port'] as int),
      vserverGroupId: pulumi.Input.fromValue(map['vserverGroupId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

