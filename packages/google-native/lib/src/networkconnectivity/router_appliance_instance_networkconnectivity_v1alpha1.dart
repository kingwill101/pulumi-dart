// ignore_for_file: unused_element, unnecessary_cast

/// RouterAppliance represents a Router appliance which is specified by a VM URI and a NIC address.
class RouterApplianceInstanceNetworkconnectivityV1alpha1 {
  /// The IP address of the network interface to use for peering.
  final String? ipAddress;
  final String? networkInterface;

  /// The URI of the virtual machine resource
  final String? virtualMachine;

  /// Creates a new [RouterApplianceInstanceNetworkconnectivityV1alpha1].
  /// [ipAddress] The IP address of the network interface to use for peering.
  /// [networkInterface] Optional.
  /// [virtualMachine] The URI of the virtual machine resource
  RouterApplianceInstanceNetworkconnectivityV1alpha1({
    this.ipAddress,
    this.networkInterface,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'networkInterface': ?networkInterface,
      'virtualMachine': ?virtualMachine,
    };
  }

  factory RouterApplianceInstanceNetworkconnectivityV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouterApplianceInstanceNetworkconnectivityV1alpha1(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      networkInterface: map['networkInterface'] == null
          ? null
          : map['networkInterface'] as String,
      virtualMachine: map['virtualMachine'] == null
          ? null
          : map['virtualMachine'] as String,
    );
  }
}
