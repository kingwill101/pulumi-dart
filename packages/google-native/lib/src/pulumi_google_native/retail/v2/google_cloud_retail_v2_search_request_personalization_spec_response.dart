// ignore_for_file: unused_element, unnecessary_cast

/// The specification for personalization.
class GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse {
  /// Defaults to Mode.AUTO.
  final String mode;

  GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestPersonalizationSpecResponse(
      mode: map['mode'] as String,
    );
  }
}
