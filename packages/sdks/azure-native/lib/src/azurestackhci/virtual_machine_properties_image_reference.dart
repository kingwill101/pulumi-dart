// ignore_for_file: unused_element, unnecessary_cast


/// Which Image to use for the virtual machine
class VirtualMachinePropertiesImageReference {
  /// Resource ID of the image
  final String? id;

  /// Creates a new [VirtualMachinePropertiesImageReference].
  /// [id] Resource ID of the image
  VirtualMachinePropertiesImageReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesImageReference.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesImageReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

