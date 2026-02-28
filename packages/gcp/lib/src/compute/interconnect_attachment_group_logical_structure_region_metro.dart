// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region_metro_facility.dart';

class InterconnectAttachmentGroupLogicalStructureRegionMetro {
  /// (Output)
  /// The facilities used for this group's Attachments'
  /// Interconnects.
  /// Structure is documented below.
  final List<InterconnectAttachmentGroupLogicalStructureRegionMetroFacility>?
      facilities;

  /// (Output)
  /// The name of the metro, as a three-letter lowercase
  /// string like "iad". This is the first component of the location of an
  /// Interconnect.
  final String? metro;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegionMetro].
  /// [facilities] (Output)
  /// [metro] (Output)
  InterconnectAttachmentGroupLogicalStructureRegionMetro({
    this.facilities,
    this.metro,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final facilitiesValue = facilities;
    if (facilitiesValue != null) {
      map['facilities'] = pulumi.Input.encodeList<
          InterconnectAttachmentGroupLogicalStructureRegionMetroFacility,
          Map<String, dynamic>>(facilitiesValue, (value) => value.toMap());
    }
    final metroValue = metro;
    if (metroValue != null) {
      map['metro'] = metroValue;
    }
    return map;
  }

  factory InterconnectAttachmentGroupLogicalStructureRegionMetro.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructureRegionMetro(
      facilities: map['facilities'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectAttachmentGroupLogicalStructureRegionMetroFacility>(
              map['facilities'],
              (value) =>
                  InterconnectAttachmentGroupLogicalStructureRegionMetroFacility
                      .fromMap((value as Map).cast<String, dynamic>())),
      metro: map['metro'] == null ? null : map['metro'] as String,
    );
  }
}
