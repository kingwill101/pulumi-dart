// ignore_for_file: unused_element, unnecessary_cast

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpecResponse {
  /// Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  final String locationType;

  GoogleCloudDataplexV1ZoneResourceSpecResponse({
    required this.locationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locationType'] = locationType;
    return map;
  }

  factory GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneResourceSpecResponse(
      locationType: map['locationType'] as String,
    );
  }
}
