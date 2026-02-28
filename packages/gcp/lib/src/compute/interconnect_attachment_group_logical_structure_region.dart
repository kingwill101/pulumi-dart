// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region_metro.dart';

class InterconnectAttachmentGroupLogicalStructureRegion {
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". This will be set
  /// for some blockers (like NO_ATTACHMENTS_IN_METRO_AND_ZONE) but does
  /// not apply to others.
  final List<InterconnectAttachmentGroupLogicalStructureRegionMetro>? metros;

  /// (Output)
  /// The name of a region, like "us-central1".
  final String? region;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegion].
  /// [metros] (Output)
  /// [region] (Output)
  InterconnectAttachmentGroupLogicalStructureRegion({
    this.metros,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metrosValue = metros;
    if (metrosValue != null) {
      map['metros'] = pulumi.Input.encodeList<
          InterconnectAttachmentGroupLogicalStructureRegionMetro,
          Map<String, dynamic>>(metrosValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InterconnectAttachmentGroupLogicalStructureRegion.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructureRegion(
      metros: map['metros'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectAttachmentGroupLogicalStructureRegionMetro>(
              map['metros'],
              (value) => InterconnectAttachmentGroupLogicalStructureRegionMetro
                  .fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
