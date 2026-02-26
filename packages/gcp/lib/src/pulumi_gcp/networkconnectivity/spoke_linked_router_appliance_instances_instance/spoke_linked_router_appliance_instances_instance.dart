// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedRouterApplianceInstancesInstance {
  /// The IP address on the VM to use for peering.
  final String ipAddress;

  /// The URI of the virtual machine resource
  final String virtualMachine;

  SpokeLinkedRouterApplianceInstancesInstance({
    required this.ipAddress,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['virtualMachine'] = virtualMachine;
    return map;
  }

  factory SpokeLinkedRouterApplianceInstancesInstance.fromMap(
      Map<String, dynamic> map) {
    return SpokeLinkedRouterApplianceInstancesInstance(
      ipAddress: map['ipAddress'] as String,
      virtualMachine: map['virtualMachine'] as String,
    );
  }
}
