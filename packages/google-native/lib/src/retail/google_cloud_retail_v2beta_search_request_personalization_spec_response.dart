// ignore_for_file: unused_element, unnecessary_cast

/// The specification for personalization.
class GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final String mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse(
      mode: map['mode'] as String,
    );
  }
}
