// ignore_for_file: unused_element, unnecessary_cast

/// The specification for personalization.
class GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final String mode;

  /// Creates a new [GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecResponse(
      mode: map['mode'] as String,
    );
  }
}
