// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerGroupServerAttachment resources.
class ServerGroupServerAttachmentState {
  /// The description of the servers.
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? description;
  /// The port that is used by the backend server. Valid values: `1` to `65535`.
  final pulumi.Input<int>? port;
  /// The ID of the server group.
  final pulumi.Input<String>? serverGroupId;
  /// The ID of the server.
  ///
  /// - If the server group type is `Instance`, set the ServerId parameter to the ID of an Elastic Compute Service (ECS) instance, an elastic network interface (ENI), or an elastic container instance. These backend servers are specified by `Ecs`, `Eni`, or `Eci`.
  /// - If the server group type is `Ip`, set the ServerId parameter to an IP address.
  final pulumi.Input<String>? serverId;
  /// The IP address of the server. If the server group type is `Ip`, set the ServerId parameter to an IP address.
  final pulumi.Input<String>? serverIp;
  /// The type of the backend server. Valid values:
  ///
  /// - `Ecs`: ECS instance
  /// - `Eni`: ENI
  /// - `Eci`: an elastic container instance
  /// - `Ip`: an IP address
  final pulumi.Input<String>? serverType;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the weight of a backend server is set to `0`, no requests are forwarded to the backend server.
  final pulumi.Input<int>? weight;
  /// The zone ID of the server.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ServerGroupServerAttachmentState].
  /// [description] The description of the servers.
  /// [port] The port that is used by the backend server. Valid values: `1` to `65535`.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the server.
  /// [serverIp] The IP address of the server. If the server group type is `Ip`, set the ServerId parameter to an IP address.
  /// [serverType] The type of the backend server. Valid values:
  /// [status] The status of the resource
  /// [weight] The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the weight of a backend server is set to `0`, no requests are forwarded to the backend server.
  /// [zoneId] The zone ID of the server.
  ServerGroupServerAttachmentState({
    pulumi.Output<String>? description,
    pulumi.Output<int>? port,
    pulumi.Output<String>? serverGroupId,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? serverIp,
    pulumi.Output<String>? serverType,
    pulumi.Output<String>? status,
    pulumi.Output<int>? weight,
    pulumi.Output<String>? zoneId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      port = pulumi.Input.asOptionalInput<int>(port),
      serverGroupId = pulumi.Input.asOptionalInput<String>(serverGroupId),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      serverIp = pulumi.Input.asOptionalInput<String>(serverIp),
      serverType = pulumi.Input.asOptionalInput<String>(serverType),
      status = pulumi.Input.asOptionalInput<String>(status),
      weight = pulumi.Input.asOptionalInput<int>(weight),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'port': ?port,
      'serverGroupId': ?serverGroupId,
      'serverId': ?serverId,
      'serverIp': ?serverIp,
      'serverType': ?serverType,
      'status': ?status,
      'weight': ?weight,
      'zoneId': ?zoneId,
    };
  }

  factory ServerGroupServerAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServerGroupServerAttachmentState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      serverGroupId: map['serverGroupId'] == null ? null : pulumi.Output.create<String>(map['serverGroupId'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      serverIp: map['serverIp'] == null ? null : pulumi.Output.create<String>(map['serverIp'] as String),
      serverType: map['serverType'] == null ? null : pulumi.Output.create<String>(map['serverType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

