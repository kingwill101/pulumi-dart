// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_physical_structure_metro_facility.dart';

class InterconnectGroupPhysicalStructureMetro {
  /// (Output)
  /// Facilities used to explain this blocker in more detail.
  /// Like physicalStructure.metros.facilities.facility, this is a numeric
  /// string like "5467".
  final List<InterconnectGroupPhysicalStructureMetroFacility>? facilities;

  /// (Output)
  /// The name of the metro, as a three-letter lowercase string
  /// like "iad". This is the first component of the location of
  /// Interconnects underneath this.
  final String? metro;

  /// Creates a new [InterconnectGroupPhysicalStructureMetro].
  /// [facilities] (Output)
  /// [metro] (Output)
  InterconnectGroupPhysicalStructureMetro({
    this.facilities,
    this.metro,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final facilitiesValue = facilities;
    if (facilitiesValue != null) {
      map['facilities'] = pulumi.Input.encodeList<
          InterconnectGroupPhysicalStructureMetroFacility,
          Map<String, dynamic>>(facilitiesValue, (value) => value.toMap());
    }
    final metroValue = metro;
    if (metroValue != null) {
      map['metro'] = metroValue;
    }
    return map;
  }

  factory InterconnectGroupPhysicalStructureMetro.fromMap(
      Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructureMetro(
      facilities: map['facilities'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectGroupPhysicalStructureMetroFacility>(
              map['facilities'],
              (value) =>
                  InterconnectGroupPhysicalStructureMetroFacility.fromMap(
                      (value as Map).cast<String, dynamic>())),
      metro: map['metro'] == null ? null : map['metro'] as String,
    );
  }
}
