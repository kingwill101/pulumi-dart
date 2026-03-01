// ignore_for_file: unused_element, unnecessary_cast


/// Describes a network interface reference.
class NetworkInterfaceReference {
  /// Specify what happens to the network interface when the VM is deleted
  final String? deleteOption;
  /// Resource Id
  final String? id;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final bool? primary;

  /// Creates a new [NetworkInterfaceReference].
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [id] Resource Id
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  NetworkInterfaceReference({
    this.deleteOption,
    this.id,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'id': ?id,
      'primary': ?primary,
    };
  }

  factory NetworkInterfaceReference.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReference(
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

