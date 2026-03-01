// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagerConnectivityConfigurationAppliesToGroup {
  /// Whether global mesh is supported.
  final bool globalMeshEnabled;
  /// The group connectivity type.
  final String groupConnectivity;
  /// The ID of the Network Manager Network Group.
  final String networkGroupId;
  /// Whether hub gateway is used.
  final bool useHubGateway;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationAppliesToGroup].
  /// [globalMeshEnabled] Whether global mesh is supported.
  /// [groupConnectivity] The group connectivity type.
  /// [networkGroupId] The ID of the Network Manager Network Group.
  /// [useHubGateway] Whether hub gateway is used.
  GetNetworkManagerConnectivityConfigurationAppliesToGroup({
    required this.globalMeshEnabled,
    required this.groupConnectivity,
    required this.networkGroupId,
    required this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalMeshEnabled': globalMeshEnabled,
      'groupConnectivity': groupConnectivity,
      'networkGroupId': networkGroupId,
      'useHubGateway': useHubGateway,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationAppliesToGroup.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationAppliesToGroup(
      globalMeshEnabled: map['globalMeshEnabled'] as bool,
      groupConnectivity: map['groupConnectivity'] as String,
      networkGroupId: map['networkGroupId'] as String,
      useHubGateway: map['useHubGateway'] as bool,
    );
  }
}

