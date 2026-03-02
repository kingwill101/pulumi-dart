// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image reference information. Used in the virtual machine profile.
class ImageReferenceResponse {
  /// The actual version of the image after use.
  final pulumi.Input<String> exactVersion;
  /// Image resource ID
  final pulumi.Input<String>? id;
  /// The image offer if applicable.
  final pulumi.Input<String>? offer;
  /// The image publisher
  final pulumi.Input<String>? publisher;
  /// The image SKU
  final pulumi.Input<String>? sku;
  /// The image version specified on creation.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageReferenceResponse].
  /// [exactVersion] The actual version of the image after use.
  /// [id] Image resource ID
  /// [offer] The image offer if applicable.
  /// [publisher] The image publisher
  /// [sku] The image SKU
  /// [version] The image version specified on creation.
  ImageReferenceResponse({
    required this.exactVersion,
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      exactVersion: (map['exactVersion'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

