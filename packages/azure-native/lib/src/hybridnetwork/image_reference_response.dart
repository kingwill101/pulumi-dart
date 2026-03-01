// ignore_for_file: unused_element, unnecessary_cast


/// The image reference properties.
class ImageReferenceResponse {
  /// Specifies in decimal numbers, the exact version of image used to create the virtual machine.
  final String? exactVersion;
  /// Specifies the offer of the image used to create the virtual machine.
  final String? offer;
  /// The image publisher.
  final String? publisher;
  /// The image SKU.
  final String? sku;
  /// Specifies the version of the image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  final String? version;

  /// Creates a new [ImageReferenceResponse].
  /// [exactVersion] Specifies in decimal numbers, the exact version of image used to create the virtual machine.
  /// [offer] Specifies the offer of the image used to create the virtual machine.
  /// [publisher] The image publisher.
  /// [sku] The image SKU.
  /// [version] Specifies the version of the image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  ImageReferenceResponse({
    this.exactVersion,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': ?exactVersion,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      exactVersion: map['exactVersion'] == null ? null : map['exactVersion'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

