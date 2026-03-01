// ignore_for_file: unused_element, unnecessary_cast


/// A class that contains virtual network definition.
class VirtualNetworkConfigurationResponse {
  /// Data management's service public IP address resource id.
  final String dataManagementPublicIpId;
  /// Engine service's public IP address resource id.
  final String enginePublicIpId;
  /// When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  final String? state;
  /// The subnet resource id.
  final String subnetId;

  /// Creates a new [VirtualNetworkConfigurationResponse].
  /// [dataManagementPublicIpId] Data management's service public IP address resource id.
  /// [enginePublicIpId] Engine service's public IP address resource id.
  /// [state] When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  /// [subnetId] The subnet resource id.
  VirtualNetworkConfigurationResponse({
    required this.dataManagementPublicIpId,
    required this.enginePublicIpId,
    this.state,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagementPublicIpId': dataManagementPublicIpId,
      'enginePublicIpId': enginePublicIpId,
      'state': ?state,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfigurationResponse(
      dataManagementPublicIpId: map['dataManagementPublicIpId'] as String,
      enginePublicIpId: map['enginePublicIpId'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

