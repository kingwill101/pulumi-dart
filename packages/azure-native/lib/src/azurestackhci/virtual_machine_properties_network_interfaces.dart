// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachinePropertiesNetworkInterfaces {
  /// ID - Resource Id of the network interface
  final String? id;

  /// Creates a new [VirtualMachinePropertiesNetworkInterfaces].
  /// [id] ID - Resource Id of the network interface
  VirtualMachinePropertiesNetworkInterfaces({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesNetworkInterfaces(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

