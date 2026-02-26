// ignore_for_file: unused_element, unnecessary_cast

/// RouterAppliance represents a Router appliance which is specified by a VM URI and a NIC address.
class RouterApplianceInstance2 {
  /// The IP address of the network interface to use for peering.
  final String? ipAddress;
  final String? networkInterface;

  /// The URI of the virtual machine resource
  final String? virtualMachine;

  RouterApplianceInstance2({
    this.ipAddress,
    this.networkInterface,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final networkInterfaceValue = networkInterface;
    if (networkInterfaceValue != null) {
      map['networkInterface'] = networkInterfaceValue;
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = virtualMachineValue;
    }
    return map;
  }

  factory RouterApplianceInstance2.fromMap(Map<String, dynamic> map) {
    return RouterApplianceInstance2(
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
