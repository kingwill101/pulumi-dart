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
  const ImageReferenceResponse({
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
      exactVersion: pulumi.Input.fromValue(map['exactVersion'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
