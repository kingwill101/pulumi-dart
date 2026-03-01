// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_platform_image_get_platform_image_args_doc}
/// Arguments for getPlatformImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_platform_image_get_platform_image_args_doc}
class GetPlatformImageArgs {
  /// Specifies the Location to pull information about this Platform Image from.
  final pulumi.Input<String> location;
  /// Specifies the Offer associated with the Platform Image.
  final pulumi.Input<String> offer;
  /// Specifies the Publisher associated with the Platform Image.
  final pulumi.Input<String> publisher;
  /// Specifies the SKU of the Platform Image.
  final pulumi.Input<String> sku;
  /// The version of the Platform Image.
  final pulumi.Input<String>? version;

  /// Creates a new [GetPlatformImageArgs].
  /// [location] Specifies the Location to pull information about this Platform Image from.
  /// [offer] Specifies the Offer associated with the Platform Image.
  /// [publisher] Specifies the Publisher associated with the Platform Image.
  /// [sku] Specifies the SKU of the Platform Image.
  /// [version] The version of the Platform Image.
  GetPlatformImageArgs({
    required String location,
    required String offer,
    required String publisher,
    required String sku,
    String? version,
  }) :
      location = pulumi.Input.asInput<String>(location),
      offer = pulumi.Input.asInput<String>(offer),
      publisher = pulumi.Input.asInput<String>(publisher),
      sku = pulumi.Input.asInput<String>(sku),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': ?version,
    };
  }

  factory GetPlatformImageArgs.fromMap(Map<String, dynamic> map) {
    return GetPlatformImageArgs(
      location: map['location'] as String,
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

