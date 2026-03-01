// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineGalleryImageReference {
  /// The Offer of the Gallery Image. Changing this forces a new resource to be created.
  final String offer;
  /// The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  final String publisher;
  /// The SKU of the Gallery Image. Changing this forces a new resource to be created.
  final String sku;
  /// The Version of the Gallery Image. Changing this forces a new resource to be created.
  final String version;

  /// Creates a new [LinuxVirtualMachineGalleryImageReference].
  /// [offer] The Offer of the Gallery Image. Changing this forces a new resource to be created.
  /// [publisher] The Publisher of the Gallery Image. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Gallery Image. Changing this forces a new resource to be created.
  /// [version] The Version of the Gallery Image. Changing this forces a new resource to be created.
  LinuxVirtualMachineGalleryImageReference({
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

  factory LinuxVirtualMachineGalleryImageReference.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineGalleryImageReference(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

