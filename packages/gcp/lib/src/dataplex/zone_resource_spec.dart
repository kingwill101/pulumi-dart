// ignore_for_file: unused_element, unnecessary_cast

class ZoneResourceSpec {
  /// Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION
  ///
  /// - - -
  final String locationType;

  /// Creates a new [ZoneResourceSpec].
  /// [locationType] Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION
  ZoneResourceSpec({required this.locationType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locationType': locationType};
  }

  factory ZoneResourceSpec.fromMap(Map<String, dynamic> map) {
    return ZoneResourceSpec(locationType: map['locationType'] as String);
  }
}
