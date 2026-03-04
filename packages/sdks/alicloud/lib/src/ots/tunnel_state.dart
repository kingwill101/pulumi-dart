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
    this.channels,
    this.createTime,
    this.expired,
    this.instanceName,
    this.tableName,
    this.tunnelId,
    this.tunnelName,
    this.tunnelRpo,
    this.tunnelStage,
    this.tunnelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels':
          ?pulumi.Input.mapOptionalInputValue<
            List<TunnelChannel>,
            List<Map<String, dynamic>>
          >(
            channels,
            (value) =>
                pulumi.Input.encodeList<TunnelChannel, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      channels: (() {
        final guardedValue = map['channels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TunnelChannel>(
            guardedValue,
            (value) =>
                TunnelChannel.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      expired: (() {
        final guardedValue = map['expired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelId: (() {
        final guardedValue = map['tunnelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelName: (() {
        final guardedValue = map['tunnelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelRpo: (() {
        final guardedValue = map['tunnelRpo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnelStage: (() {
        final guardedValue = map['tunnelStage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelType: (() {
        final guardedValue = map['tunnelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
