// ignore_for_file: unused_element, unnecessary_cast

/// A router appliance instance is a Compute Engine virtual machine (VM) instance that acts as a BGP speaker. A router appliance instance is specified by the URI of the VM and the internal IP address of one of the VM's network interfaces.
class RouterApplianceInstance {
  /// The IP address on the VM to use for peering.
  final String? ipAddress;

  /// The URI of the VM.
  final String? virtualMachine;

  RouterApplianceInstance({
    this.ipAddress,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = virtualMachineValue;
    }
    return map;
  }

  factory RouterApplianceInstance.fromMap(Map<String, dynamic> map) {
    return RouterApplianceInstance(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      virtualMachine: map['virtualMachine'] == null
          ? null
          : map['virtualMachine'] as String,
    );
  }
}
