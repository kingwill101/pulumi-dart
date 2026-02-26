// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_zone_resource_spec_location_type.dart';

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpec {
  /// Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  final GoogleCloudDataplexV1ZoneResourceSpecLocationType locationType;

  GoogleCloudDataplexV1ZoneResourceSpec({
    required this.locationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locationType'] = locationType.value;
    return map;
  }

  factory GoogleCloudDataplexV1ZoneResourceSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneResourceSpec(
      locationType: GoogleCloudDataplexV1ZoneResourceSpecLocationType.fromValue(
          map['locationType'] as String),
    );
  }
}
