// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_response_provisioning_status.dart';

/// HybridAKSNetworkStatus defines the observed state of HybridAKSNetwork
class VirtualNetworksPropertiesResponseStatus {
  /// Contains Provisioning errors
  final pulumi.Input<VirtualNetworksPropertiesResponseProvisioningStatus>? provisioningStatus;

  /// Creates a new [VirtualNetworksPropertiesResponseStatus].
  /// [provisioningStatus] Contains Provisioning errors
  VirtualNetworksPropertiesResponseStatus({
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesResponseProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory VirtualNetworksPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseStatus(
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksPropertiesResponseProvisioningStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

