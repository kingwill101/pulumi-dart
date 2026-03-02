// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerGroupAttachment resources.
class ServerGroupAttachmentState {
  /// If instances of scaling group are attached/removed from backend server when
  /// server group from scaling group. Default to false.
  final pulumi.Input<bool>? forceAttach;
  /// The port will be used for Server Group backend server.
  final pulumi.Input<int>? port;
  /// ID of the scaling group.
  final pulumi.Input<String>? scalingGroupId;
  /// ID of Server Group.
  final pulumi.Input<String>? serverGroupId;
  /// The type of server group N. Valid values: ALB, NLB.
  final pulumi.Input<String>? type;
  /// The weight of an ECS instance attached to the Server Group.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupAttachmentState].
  /// [forceAttach] If instances of scaling group are attached/removed from backend server when
  /// [port] The port will be used for Server Group backend server.
  /// [scalingGroupId] ID of the scaling group.
  /// [serverGroupId] ID of Server Group.
  /// [type] The type of server group N. Valid values: ALB, NLB.
  /// [weight] The weight of an ECS instance attached to the Server Group.
  ServerGroupAttachmentState({
    this.forceAttach,
    this.port,
    this.scalingGroupId,
    this.serverGroupId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceAttach': ?forceAttach,
      'port': ?port,
      'scalingGroupId': ?scalingGroupId,
      'serverGroupId': ?serverGroupId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory ServerGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServerGroupAttachmentState(
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach']! as bool).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId']! as String).input(),
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

