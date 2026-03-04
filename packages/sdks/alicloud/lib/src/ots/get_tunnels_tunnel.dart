// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnels_tunnel_channel.dart';

class GetTunnelsTunnel {
  /// The channels of OTS tunnel. Each element contains the following attributes:
  final pulumi.Input<List<GetTunnelsTunnelChannel>> channels;

  /// The creation time of the Tunnel.
  final pulumi.Input<int> createTime;

  /// Whether the tunnel has expired.
  final pulumi.Input<bool> expired;

  /// The resource ID. The value is `&lt;instance_name&gt;:&lt;table_name&gt;:&lt;tunnel_name&gt;`.
  final pulumi.Input<String> id;

  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;

  /// The name of OTS table.
  final pulumi.Input<String> tableName;

  /// The tunnel id of the OTS which could not be changed.
  final pulumi.Input<String> tunnelId;

  /// The tunnel name of the OTS which could not be changed.
  final pulumi.Input<String> tunnelName;

  /// The latest consumption time of the tunnel, unix time in nanosecond.
  final pulumi.Input<int> tunnelRpo;

  /// The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  final pulumi.Input<String> tunnelStage;

  /// The type of the OTS tunnel, valid values: `BaseAndStream`, `BaseData`, `Stream`.
  final pulumi.Input<String> tunnelType;

  /// Creates a new [GetTunnelsTunnel].
  /// [channels] The channels of OTS tunnel. Each element contains the following attributes:
  /// [createTime] The creation time of the Tunnel.
  /// [expired] Whether the tunnel has expired.
  /// [id] The resource ID. The value is `&lt;instance_name&gt;:&lt;table_name&gt;:&lt;tunnel_name&gt;`.
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
      'channels':
          pulumi.Input.mapInputValue<
            List<GetTunnelsTunnelChannel>,
            List<Map<String, dynamic>>
          >(
            channels,
            (value) =>
                pulumi.Input.encodeList<
                  GetTunnelsTunnelChannel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      channels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTunnelsTunnelChannel>(
          map['channels']!,
          (value) => GetTunnelsTunnelChannel.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      expired: pulumi.Input.fromValue(map['expired'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      tunnelName: pulumi.Input.fromValue(map['tunnelName'] as String),
      tunnelRpo: pulumi.Input.fromValue(map['tunnelRpo'] as int),
      tunnelStage: pulumi.Input.fromValue(map['tunnelStage'] as String),
      tunnelType: pulumi.Input.fromValue(map['tunnelType'] as String),
    );
  }
}
