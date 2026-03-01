// ignore_for_file: unused_element, unnecessary_cast

class InterconnectGroupPhysicalStructureMetroFacilityZone {
  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final List<String>? interconnects;

  /// (Output)
  /// The name of the zone, either "zone1" or "zone2".
  /// This is the second component of the location of Interconnects in
  /// this facility.
  final String? zone;

  /// Creates a new [InterconnectGroupPhysicalStructureMetroFacilityZone].
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [zone] (Output)
  InterconnectGroupPhysicalStructureMetroFacilityZone({
    this.interconnects,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'interconnects': ?interconnects, 'zone': ?zone};
  }

  factory InterconnectGroupPhysicalStructureMetroFacilityZone.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectGroupPhysicalStructureMetroFacilityZone(
      interconnects: map['interconnects'] == null
          ? null
          : (map['interconnects'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
