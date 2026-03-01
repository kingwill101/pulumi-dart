// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnels_tunnel_channel.dart';

class GetTunnelsTunnel {
  /// The channels of OTS tunnel. Each element contains the following attributes:
  final List<GetTunnelsTunnelChannel> channels;
  /// The creation time of the Tunnel.
  final int createTime;
  /// Whether the tunnel has expired.
  final bool expired;
  /// The resource ID. The value is `<instance_name>:<table_name>:<tunnel_name>`.
  final String id;
  /// The name of OTS instance.
  final String instanceName;
  /// The name of OTS table.
  final String tableName;
  /// The tunnel id of the OTS which could not be changed.
  final String tunnelId;
  /// The tunnel name of the OTS which could not be changed.
  final String tunnelName;
  /// The latest consumption time of the tunnel, unix time in nanosecond.
  final int tunnelRpo;
  /// The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  final String tunnelStage;
  /// The type of the OTS tunnel, valid values: `BaseAndStream`, `BaseData`, `Stream`.
  final String tunnelType;

  /// Creates a new [GetTunnelsTunnel].
  /// [channels] The channels of OTS tunnel. Each element contains the following attributes:
  /// [createTime] The creation time of the Tunnel.
  /// [expired] Whether the tunnel has expired.
  /// [id] The resource ID. The value is `<instance_name>:<table_name>:<tunnel_name>`.
  /// [instanceName] The name of OTS instance.
  /// [tableName] The name of OTS table.
  /// [tunnelId] The tunnel id of the OTS which could not be changed.
  /// [tunnelName] The tunnel name of the OTS which could not be changed.
  /// [tunnelRpo] The latest consumption time of the tunnel, unix time in nanosecond.
  /// [tunnelStage] The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  /// [tunnelType] The type of the OTS tunnel, valid values: `BaseAndStream`, `BaseData`, `Stream`.
  GetTunnelsTunnel({
    required this.channels,
    required this.createTime,
    required this.expired,
    required this.id,
    required this.instanceName,
    required this.tableName,
    required this.tunnelId,
    required this.tunnelName,
    required this.tunnelRpo,
    required this.tunnelStage,
    required this.tunnelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<GetTunnelsTunnelChannel, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'createTime': createTime,
      'expired': expired,
      'id': id,
      'instanceName': instanceName,
      'tableName': tableName,
      'tunnelId': tunnelId,
      'tunnelName': tunnelName,
      'tunnelRpo': tunnelRpo,
      'tunnelStage': tunnelStage,
      'tunnelType': tunnelType,
    };
  }

  factory GetTunnelsTunnel.fromMap(Map<String, dynamic> map) {
    return GetTunnelsTunnel(
      channels: pulumi.Input.decodeList<GetTunnelsTunnelChannel>(map['channels'], (value) => GetTunnelsTunnelChannel.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as int,
      expired: map['expired'] as bool,
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      tableName: map['tableName'] as String,
      tunnelId: map['tunnelId'] as String,
      tunnelName: map['tunnelName'] as String,
      tunnelRpo: map['tunnelRpo'] as int,
      tunnelStage: map['tunnelStage'] as String,
      tunnelType: map['tunnelType'] as String,
    );
  }
}

