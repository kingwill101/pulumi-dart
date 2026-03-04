// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupServer {
  /// The description of the backend server. The description must be 2 to 256 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? description;

  /// The port that is used by the backend server. Valid values: `1` to `65535`. You can specify at most 200 servers in each call.
  ///
  /// &gt; **NOTE:**   This parameter is required if you set `ServerType` to `Ecs`, `Eni`, `Eci`, or `Ip`. You do not need to set this parameter if `ServerType` is set to `Fc`.
  final pulumi.Input<int>? port;

  /// Specifies whether to enable the remote IP feature. You can specify at most 200 servers in each call. Default values:
  final pulumi.Input<bool>? remoteIpEnabled;

  /// The ID of the server group.
  final pulumi.Input<String>? serverGroupId;

  /// The ID of the backend server. You can specify at most 200 servers in each call.
  ///
  /// *   If the server group is of the `Instance` type, set ServerId to the ID of a resource of the `Ecs`, `Eni`, or `Eci` type.
  ///
  /// *   If the server group is of the `Ip` type, set ServerId to IP addresses.
  ///
  /// &gt; **NOTE:**   You cannot perform this operation on a server group of the Function Compute type. You can call the [ListServerGroups](https://www.alibabacloud.com/help/en/doc-detail/213627.html) operation to query the type of server groups.
  final pulumi.Input<String> serverId;

  /// The IP address of the backend server. You can specify at most 200 servers in each call.
  ///
  /// &gt; **NOTE:**   You do not need to set this parameter if you set `ServerType` to `Fc`.
  final pulumi.Input<String>? serverIp;

  /// The type of the backend server. You can specify at most 200 servers in each call. Default values:
  ///
  /// - `Ecs`: Elastic Compute Service (ECS) instance
  /// - `Eni`: elastic network interface (ENI)
  /// - `Eci`: elastic container instance
  /// - `Ip`: IP address
  /// - `Fc`: Function Compute
  final pulumi.Input<String> serverType;

  /// The status of the resource
  final pulumi.Input<String>? status;

  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `0`. If the value is set to `0`, no requests are forwarded to the server. You can specify at most 200 servers in each call.
  ///
  /// &gt; **NOTE:**   Default value: `0`. We strongly recommend specifying this parameter.
  /// &gt; **NOTE:**   You do not need to set this parameter if you set `ServerType` to `Fc`.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupServer].
  /// [description] The description of the backend server. The description must be 2 to 256 characters in length, and cannot start with http:// or https://.
  /// [port] The port that is used by the backend server. Valid values: `1` to `65535`. You can specify at most 200 servers in each call.
  /// [remoteIpEnabled] Specifies whether to enable the remote IP feature. You can specify at most 200 servers in each call. Default values:
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the backend server. You can specify at most 200 servers in each call.
  /// [serverIp] The IP address of the backend server. You can specify at most 200 servers in each call.
  /// [serverType] The type of the backend server. You can specify at most 200 servers in each call. Default values:
  /// [status] The status of the resource
  /// [weight] The weight of the backend server. Valid values: `0` to `100`. Default value: `0`. If the value is set to `0`, no requests are forwarded to the server. You can specify at most 200 servers in each call.
  ServerGroupServer({
    this.description,
    this.port,
    this.remoteIpEnabled,
    this.serverGroupId,
    required this.serverId,
    this.serverIp,
    required this.serverType,
    this.status,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'port': ?port,
      'remoteIpEnabled': ?remoteIpEnabled,
      'serverGroupId': ?serverGroupId,
      'serverId': serverId,
      'serverIp': ?serverIp,
      'serverType': serverType,
      'status': ?status,
      'weight': ?weight,
    };
  }

  factory ServerGroupServer.fromMap(Map<String, dynamic> map) {
    return ServerGroupServer(
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
      remoteIpEnabled: (() {
        final guardedValue = map['remoteIpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serverGroupId: (() {
        final guardedValue = map['serverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      serverIp: (() {
        final guardedValue = map['serverIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
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
    );
  }
}
