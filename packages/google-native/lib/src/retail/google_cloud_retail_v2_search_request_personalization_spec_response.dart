// ignore_for_file: unused_element, unnecessary_cast


/// The specification for personalization.
class GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final String mode;

  /// Creates a new [GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse(
      mode: map['mode'] as String,
    );
  }
}

