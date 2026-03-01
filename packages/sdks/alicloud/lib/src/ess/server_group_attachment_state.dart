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
    pulumi.Output<bool>? forceAttach,
    pulumi.Output<int>? port,
    pulumi.Output<String>? scalingGroupId,
    pulumi.Output<String>? serverGroupId,
    pulumi.Output<String>? type,
    pulumi.Output<int>? weight,
  }) :
      forceAttach = pulumi.Input.asOptionalInput<bool>(forceAttach),
      port = pulumi.Input.asOptionalInput<int>(port),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId),
      serverGroupId = pulumi.Input.asOptionalInput<String>(serverGroupId),
      type = pulumi.Input.asOptionalInput<String>(type),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      forceAttach: map['forceAttach'] == null ? null : pulumi.Output.create<bool>(map['forceAttach'] as bool),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
      serverGroupId: map['serverGroupId'] == null ? null : pulumi.Output.create<String>(map['serverGroupId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

