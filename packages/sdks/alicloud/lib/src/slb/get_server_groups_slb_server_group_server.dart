// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerGroupsSlbServerGroupServer {
  /// ID of the attached ECS instance.
  final pulumi.Input<String> instanceId;
  /// Weight associated to the ECS instance.
  final pulumi.Input<int> weight;

  /// Creates a new [GetServerGroupsSlbServerGroupServer].
  /// [instanceId] ID of the attached ECS instance.
  /// [weight] Weight associated to the ECS instance.
  const GetServerGroupsSlbServerGroupServer({
    required this.instanceId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'weight': weight,
    };
  }

  factory GetServerGroupsSlbServerGroupServer.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsSlbServerGroupServer(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

