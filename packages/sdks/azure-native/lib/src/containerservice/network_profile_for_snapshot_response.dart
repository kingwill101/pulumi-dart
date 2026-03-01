// ignore_for_file: unused_element, unnecessary_cast


/// network profile for managed cluster snapshot, these properties are read only.
class NetworkProfileForSnapshotResponse {
  /// loadBalancerSku for managed cluster snapshot.
  final String? loadBalancerSku;
  /// networkMode for managed cluster snapshot.
  final String? networkMode;
  /// networkPlugin for managed cluster snapshot.
  final String? networkPlugin;
  /// NetworkPluginMode for managed cluster snapshot.
  final String? networkPluginMode;
  /// networkPolicy for managed cluster snapshot.
  final String? networkPolicy;

  /// Creates a new [NetworkProfileForSnapshotResponse].
  /// [loadBalancerSku] loadBalancerSku for managed cluster snapshot.
  /// [networkMode] networkMode for managed cluster snapshot.
  /// [networkPlugin] networkPlugin for managed cluster snapshot.
  /// [networkPluginMode] NetworkPluginMode for managed cluster snapshot.
  /// [networkPolicy] networkPolicy for managed cluster snapshot.
  NetworkProfileForSnapshotResponse({
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
      loadBalancerSku: map['loadBalancerSku'] == null ? null : map['loadBalancerSku'] as String,
      networkMode: map['networkMode'] == null ? null : map['networkMode'] as String,
      networkPlugin: map['networkPlugin'] == null ? null : map['networkPlugin'] as String,
      networkPluginMode: map['networkPluginMode'] == null ? null : map['networkPluginMode'] as String,
      networkPolicy: map['networkPolicy'] == null ? null : map['networkPolicy'] as String,
    );
  }
}

