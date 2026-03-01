// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the definition of a gallery application used in Test Base package.
class GalleryAppDefinitionResponse {
  /// Whether the disclaimer of the gallery application is accepted.
  final bool? isConsented;
  /// The SKU id of the gallery application.
  final String skuId;

  /// Creates a new [GalleryAppDefinitionResponse].
  /// [isConsented] Whether the disclaimer of the gallery application is accepted.
  /// [skuId] The SKU id of the gallery application.
  GalleryAppDefinitionResponse({
    this.isConsented,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isConsented': ?isConsented,
      'skuId': skuId,
    };
  }

  factory GalleryAppDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryAppDefinitionResponse(
      isConsented: map['isConsented'] == null ? null : map['isConsented'] as bool,
      skuId: map['skuId'] as String,
    );
  }
}

