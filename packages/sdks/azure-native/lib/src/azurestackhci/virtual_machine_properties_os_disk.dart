// ignore_for_file: unused_element, unnecessary_cast


/// VHD to attach as OS disk
class VirtualMachinePropertiesOsDisk {
  /// Resource ID of the OS disk
  final String? id;

  /// Creates a new [VirtualMachinePropertiesOsDisk].
  /// [id] Resource ID of the OS disk
  VirtualMachinePropertiesOsDisk({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesOsDisk(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

