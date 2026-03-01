// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineGalleryImageReference {
  /// The Offer of the Gallery Image. Changing this forces a new resource to be created.
  final String offer;
  /// The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  final String publisher;
  /// The SKU of the Gallery Image. Changing this forces a new resource to be created.
  final String sku;
  /// The Version of the Gallery Image. Changing this forces a new resource to be created.
  final String version;

  /// Creates a new [WindowsVirtualMachineGalleryImageReference].
  /// [offer] The Offer of the Gallery Image. Changing this forces a new resource to be created.
  /// [publisher] The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Gallery Image. Changing this forces a new resource to be created.
  /// [version] The Version of the Gallery Image. Changing this forces a new resource to be created.
  WindowsVirtualMachineGalleryImageReference({
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

  factory WindowsVirtualMachineGalleryImageReference.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineGalleryImageReference(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

