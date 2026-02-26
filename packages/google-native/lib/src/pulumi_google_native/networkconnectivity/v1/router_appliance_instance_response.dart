// ignore_for_file: unused_element, unnecessary_cast

/// A router appliance instance is a Compute Engine virtual machine (VM) instance that acts as a BGP speaker. A router appliance instance is specified by the URI of the VM and the internal IP address of one of the VM's network interfaces.
class RouterApplianceInstanceResponse {
  /// The IP address on the VM to use for peering.
  final String ipAddress;

  /// The URI of the VM.
  final String virtualMachine;

  RouterApplianceInstanceResponse({
    required this.ipAddress,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['virtualMachine'] = virtualMachine;
    return map;
  }

  factory RouterApplianceInstanceResponse.fromMap(Map<String, dynamic> map) {
    return RouterApplianceInstanceResponse(
      ipAddress: map['ipAddress'] as String,
      virtualMachine: map['virtualMachine'] as String,
    );
  }
}
