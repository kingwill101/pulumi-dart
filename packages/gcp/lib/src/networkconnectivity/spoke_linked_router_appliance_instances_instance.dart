// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedRouterApplianceInstancesInstance {
  /// The IP address on the VM to use for peering.
  final String ipAddress;

  /// The URI of the virtual machine resource
  final String virtualMachine;

  /// Creates a new [SpokeLinkedRouterApplianceInstancesInstance].
  /// [ipAddress] The IP address on the VM to use for peering.
  /// [virtualMachine] The URI of the virtual machine resource
  SpokeLinkedRouterApplianceInstancesInstance({
    required this.ipAddress,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'virtualMachine': virtualMachine,
    };
  }

  factory SpokeLinkedRouterApplianceInstancesInstance.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpokeLinkedRouterApplianceInstancesInstance(
      ipAddress: map['ipAddress'] as String,
      virtualMachine: map['virtualMachine'] as String,
    );
  }
}
