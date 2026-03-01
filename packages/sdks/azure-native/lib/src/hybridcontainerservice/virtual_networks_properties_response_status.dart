// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_networks_properties_response_provisioning_status.dart';

/// HybridAKSNetworkStatus defines the observed state of HybridAKSNetwork
class VirtualNetworksPropertiesResponseStatus {
  /// Contains Provisioning errors
  final VirtualNetworksPropertiesResponseProvisioningStatus? provisioningStatus;

  /// Creates a new [VirtualNetworksPropertiesResponseStatus].
  /// [provisioningStatus] Contains Provisioning errors
  VirtualNetworksPropertiesResponseStatus({
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory VirtualNetworksPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseStatus(
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualNetworksPropertiesResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

