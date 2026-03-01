// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_channel.dart';

/// Input properties used for looking up and filtering Tunnel resources.
class TunnelState {
  /// The channels of OTS tunnel. Each element contains the following attributes:
  final pulumi.Input<List<TunnelChannel>>? channels;
  /// The creation time of the Tunnel.
  final pulumi.Input<int>? createTime;
  /// Whether the tunnel has expired.
  final pulumi.Input<bool>? expired;
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String>? instanceName;
  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String>? tableName;
  /// The tunnel id of the OTS which could not be changed.
  final pulumi.Input<String>? tunnelId;
  /// The name of the OTS tunnel. If changed, a new tunnel would be created.
  final pulumi.Input<String>? tunnelName;
  /// The latest consumption time of the tunnel, unix time in nanosecond.
  final pulumi.Input<int>? tunnelRpo;
  /// The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  final pulumi.Input<String>? tunnelStage;
  /// The type of the OTS tunnel. Only `BaseAndStream`, `BaseData` or `Stream` is allowed.
  final pulumi.Input<String>? tunnelType;

  /// Creates a new [TunnelState].
  /// [channels] The channels of OTS tunnel. Each element contains the following attributes:
  /// [createTime] The creation time of the Tunnel.
  /// [expired] Whether the tunnel has expired.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  /// [tunnelId] The tunnel id of the OTS which could not be changed.
  /// [tunnelName] The name of the OTS tunnel. If changed, a new tunnel would be created.
  /// [tunnelRpo] The latest consumption time of the tunnel, unix time in nanosecond.
  /// [tunnelStage] The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  /// [tunnelType] The type of the OTS tunnel. Only `BaseAndStream`, `BaseData` or `Stream` is allowed.
  TunnelState({
    pulumi.Output<List<TunnelChannel>>? channels,
    pulumi.Output<int>? createTime,
    pulumi.Output<bool>? expired,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? tableName,
    pulumi.Output<String>? tunnelId,
    pulumi.Output<String>? tunnelName,
    pulumi.Output<int>? tunnelRpo,
    pulumi.Output<String>? tunnelStage,
    pulumi.Output<String>? tunnelType,
  }) :
      channels = pulumi.Input.asOptionalInput<List<TunnelChannel>>(channels),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      expired = pulumi.Input.asOptionalInput<bool>(expired),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      tunnelId = pulumi.Input.asOptionalInput<String>(tunnelId),
      tunnelName = pulumi.Input.asOptionalInput<String>(tunnelName),
      tunnelRpo = pulumi.Input.asOptionalInput<int>(tunnelRpo),
      tunnelStage = pulumi.Input.asOptionalInput<String>(tunnelStage),
      tunnelType = pulumi.Input.asOptionalInput<String>(tunnelType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': ?pulumi.Input.mapOptionalInputValue<List<TunnelChannel>, List<Map<String, dynamic>>>(channels, (value) => pulumi.Input.encodeList<TunnelChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'expired': ?expired,
      'instanceName': ?instanceName,
      'tableName': ?tableName,
      'tunnelId': ?tunnelId,
      'tunnelName': ?tunnelName,
      'tunnelRpo': ?tunnelRpo,
      'tunnelStage': ?tunnelStage,
      'tunnelType': ?tunnelType,
    };
  }

  factory TunnelState.fromMap(Map<String, dynamic> map) {
    return TunnelState(
      channels: map['channels'] == null ? null : pulumi.Output.create<List<TunnelChannel>>(pulumi.Input.decodeList<TunnelChannel>(map['channels'], (value) => TunnelChannel.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      expired: map['expired'] == null ? null : pulumi.Output.create<bool>(map['expired'] as bool),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
      tunnelId: map['tunnelId'] == null ? null : pulumi.Output.create<String>(map['tunnelId'] as String),
      tunnelName: map['tunnelName'] == null ? null : pulumi.Output.create<String>(map['tunnelName'] as String),
      tunnelRpo: map['tunnelRpo'] == null ? null : pulumi.Output.create<int>(map['tunnelRpo'] as int),
      tunnelStage: map['tunnelStage'] == null ? null : pulumi.Output.create<String>(map['tunnelStage'] as String),
      tunnelType: map['tunnelType'] == null ? null : pulumi.Output.create<String>(map['tunnelType'] as String),
    );
  }
}

