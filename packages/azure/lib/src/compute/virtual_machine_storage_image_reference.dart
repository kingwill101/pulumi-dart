// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineStorageImageReference {
  /// Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String? id;
  /// Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final String? offer;
  /// Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final String? publisher;
  /// Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
  final String? sku;
  /// Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.
  ///
  /// To provision a Custom Image, the following fields are applicable:
  final String? version;

  /// Creates a new [VirtualMachineStorageImageReference].
  /// [id] Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [offer] Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.
  VirtualMachineStorageImageReference({
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory VirtualMachineStorageImageReference.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageImageReference(
      id: map['id'] == null ? null : map['id'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

