// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network profile for managed cluster snapshot, these properties are read only.
class NetworkProfileForSnapshotResponse {
  /// loadBalancerSku for managed cluster snapshot.
  final pulumi.Input<String>? loadBalancerSku;
  /// networkMode for managed cluster snapshot.
  final pulumi.Input<String>? networkMode;
  /// networkPlugin for managed cluster snapshot.
  final pulumi.Input<String>? networkPlugin;
  /// NetworkPluginMode for managed cluster snapshot.
  final pulumi.Input<String>? networkPluginMode;
  /// networkPolicy for managed cluster snapshot.
  final pulumi.Input<String>? networkPolicy;

  /// Creates a new [NetworkProfileForSnapshotResponse].
  /// [loadBalancerSku] loadBalancerSku for managed cluster snapshot.
  /// [networkMode] networkMode for managed cluster snapshot.
  /// [networkPlugin] networkPlugin for managed cluster snapshot.
  /// [networkPluginMode] NetworkPluginMode for managed cluster snapshot.
  /// [networkPolicy] networkPolicy for managed cluster snapshot.
  const NetworkProfileForSnapshotResponse({
    this.loadBalancerSku,
    this.networkMode,
    this.networkPlugin,
    this.networkPluginMode,
    this.networkPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerSku': ?loadBalancerSku,
      'networkMode': ?networkMode,
      'networkPlugin': ?networkPlugin,
      'networkPluginMode': ?networkPluginMode,
      'networkPolicy': ?networkPolicy,
    };
  }

  factory NetworkProfileForSnapshotResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileForSnapshotResponse(
      loadBalancerSku: (() { final guardedValue = map['loadBalancerSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPlugin: (() { final guardedValue = map['networkPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPluginMode: (() { final guardedValue = map['networkPluginMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkPolicy: (() { final guardedValue = map['networkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

