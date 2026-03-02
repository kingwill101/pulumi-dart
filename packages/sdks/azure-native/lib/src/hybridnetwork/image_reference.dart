// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The image reference properties.
class ImageReference {
  /// Specifies in decimal numbers, the exact version of image used to create the virtual machine.
  final pulumi.Input<String>? exactVersion;
  /// Specifies the offer of the image used to create the virtual machine.
  final pulumi.Input<String>? offer;
  /// The image publisher.
  final pulumi.Input<String>? publisher;
  /// The image SKU.
  final pulumi.Input<String>? sku;
  /// Specifies the version of the image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageReference].
  /// [exactVersion] Specifies in decimal numbers, the exact version of image used to create the virtual machine.
  /// [offer] Specifies the offer of the image used to create the virtual machine.
  /// [publisher] The image publisher.
  /// [sku] The image SKU.
  /// [version] Specifies the version of the image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available.
  ImageReference({
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

  factory ImageReference.fromMap(Map<String, dynamic> map) {
    return ImageReference(
      exactVersion: map['exactVersion'] == null ? null : (map['exactVersion'] as String).input(),
      offer: map['offer'] == null ? null : (map['offer'] as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

