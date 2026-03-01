// ignore_for_file: unused_element, unnecessary_cast

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpecResponse {
  /// Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  final String locationType;

  /// Creates a new [GoogleCloudDataplexV1ZoneResourceSpecResponse].
  /// [locationType] Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  GoogleCloudDataplexV1ZoneResourceSpecResponse({required this.locationType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locationType': locationType};
  }

  factory GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1ZoneResourceSpecResponse(
      locationType: map['locationType'] as String,
    );
  }
}
