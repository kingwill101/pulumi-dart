// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetSourceImageReference {
  /// Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String offer;
  /// Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  final String publisher;
  /// Specifies the SKU of the image used to create the virtual machines.
  final String sku;
  /// Specifies the version of the image used to create the virtual machines.
  final String version;

  /// Creates a new [WindowsVirtualMachineScaleSetSourceImageReference].
  /// [offer] Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
  /// [sku] Specifies the SKU of the image used to create the virtual machines.
  /// [version] Specifies the version of the image used to create the virtual machines.
  WindowsVirtualMachineScaleSetSourceImageReference({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory WindowsVirtualMachineScaleSetSourceImageReference.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetSourceImageReference(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

