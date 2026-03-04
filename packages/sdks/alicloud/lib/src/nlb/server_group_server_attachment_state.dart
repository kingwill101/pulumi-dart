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
    this.description,
    this.port,
    this.serverGroupId,
    this.serverId,
    this.serverIp,
    this.serverType,
    this.status,
    this.weight,
    this.zoneId,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverGroupId: (() {
        final guardedValue = map['serverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverIp: (() {
        final guardedValue = map['serverIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverType: (() {
        final guardedValue = map['serverType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
