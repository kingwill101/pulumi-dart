// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagerConnectivityConfigurationAppliesToGroup {
  /// Indicates whether to global mesh is supported for this group. Possible values are `true` and `false`.
  ///
  /// > **Note:** A group can be global only if the `group_connectivity` is `DirectlyConnected`.
  final bool? globalMeshEnabled;
  /// Specifies the group connectivity type. Possible values are `None` and `DirectlyConnected`.
  final String groupConnectivity;
  /// Specifies the resource ID of Network Group which the configuration applies to.
  final String networkGroupId;
  /// Indicates whether the hub gateway is used. Possible values are `true` and `false`.
  final bool? useHubGateway;

  /// Creates a new [NetworkManagerConnectivityConfigurationAppliesToGroup].
  /// [globalMeshEnabled] Indicates whether to global mesh is supported for this group. Possible values are `true` and `false`.
  /// [groupConnectivity] Specifies the group connectivity type. Possible values are `None` and `DirectlyConnected`.
  /// [networkGroupId] Specifies the resource ID of Network Group which the configuration applies to.
  /// [useHubGateway] Indicates whether the hub gateway is used. Possible values are `true` and `false`.
  NetworkManagerConnectivityConfigurationAppliesToGroup({
    this.globalMeshEnabled,
    required this.groupConnectivity,
    required this.networkGroupId,
    this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalMeshEnabled': ?globalMeshEnabled,
      'groupConnectivity': groupConnectivity,
      'networkGroupId': networkGroupId,
      'useHubGateway': ?useHubGateway,
    };
  }

  factory NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap(Map<String, dynamic> map) {
    return NetworkManagerConnectivityConfigurationAppliesToGroup(
      globalMeshEnabled: map['globalMeshEnabled'] == null ? null : map['globalMeshEnabled'] as bool,
      groupConnectivity: map['groupConnectivity'] as String,
      networkGroupId: map['networkGroupId'] as String,
      useHubGateway: map['useHubGateway'] == null ? null : map['useHubGateway'] as bool,
    );
  }
}

