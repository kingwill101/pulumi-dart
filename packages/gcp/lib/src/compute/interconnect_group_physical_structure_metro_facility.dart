// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_physical_structure_metro_facility_zone.dart';

class InterconnectGroupPhysicalStructureMetroFacility {
  /// (Output)
  /// The ID of this facility, as a numeric string like
  /// "5467". This is the third component of the location of Interconnects
  /// in this facility.
  final String? facility;

  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Zone names are "zone1" and/or "zone2".
  final List<InterconnectGroupPhysicalStructureMetroFacilityZone>? zones;

  /// Creates a new [InterconnectGroupPhysicalStructureMetroFacility].
  /// [facility] (Output)
  /// [zones] (Output)
  InterconnectGroupPhysicalStructureMetroFacility({
    this.facility,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final facilityValue = facility;
    if (facilityValue != null) {
      map['facility'] = facilityValue;
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = pulumi.Input.encodeList<
          InterconnectGroupPhysicalStructureMetroFacilityZone,
          Map<String, dynamic>>(zonesValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectGroupPhysicalStructureMetroFacility.fromMap(
      Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructureMetroFacility(
      facility: map['facility'] == null ? null : map['facility'] as String,
      zones: map['zones'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectGroupPhysicalStructureMetroFacilityZone>(
              map['zones'],
              (value) =>
                  InterconnectGroupPhysicalStructureMetroFacilityZone.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
