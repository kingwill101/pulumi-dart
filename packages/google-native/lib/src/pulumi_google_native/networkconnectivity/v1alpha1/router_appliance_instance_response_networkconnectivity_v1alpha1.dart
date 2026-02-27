// ignore_for_file: unused_element, unnecessary_cast

/// RouterAppliance represents a Router appliance which is specified by a VM URI and a NIC address.
class RouterApplianceInstanceResponseNetworkconnectivityV1alpha1 {
  /// The IP address of the network interface to use for peering.
  final String ipAddress;
  final String networkInterface;

  /// The URI of the virtual machine resource
  final String virtualMachine;

  RouterApplianceInstanceResponseNetworkconnectivityV1alpha1({
    required this.ipAddress,
    required this.networkInterface,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['networkInterface'] = networkInterface;
    map['virtualMachine'] = virtualMachine;
    return map;
  }

  factory RouterApplianceInstanceResponseNetworkconnectivityV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RouterApplianceInstanceResponseNetworkconnectivityV1alpha1(
      ipAddress: map['ipAddress'] as String,
      networkInterface: map['networkInterface'] as String,
      virtualMachine: map['virtualMachine'] as String,
    );
  }
}
