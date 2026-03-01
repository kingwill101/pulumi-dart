// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the definition of a gallery application used in Test Base package.
class GalleryAppDefinition {
  /// Whether the disclaimer of the gallery application is accepted.
  final bool? isConsented;
  /// The SKU id of the gallery application.
  final String skuId;

  /// Creates a new [GalleryAppDefinition].
  /// [isConsented] Whether the disclaimer of the gallery application is accepted.
  /// [skuId] The SKU id of the gallery application.
  GalleryAppDefinition({
    this.isConsented,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isConsented': ?isConsented,
      'skuId': skuId,
    };
  }

  factory GalleryAppDefinition.fromMap(Map<String, dynamic> map) {
    return GalleryAppDefinition(
      isConsented: map['isConsented'] == null ? null : map['isConsented'] as bool,
      skuId: map['skuId'] as String,
    );
  }
}

