// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_attachment_group_logical_structure_region/interconnect_attachment_group_logical_structure_region.dart';

class InterconnectAttachmentGroupLogicalStructure {
  /// (Output)
  /// Regions used to explain this blocker in more
  /// detail. These are region names formatted like "us-central1". This
  /// will be set for some blockers (like INCOMPATIBLE_REGIONS) but does
  /// not apply to others.
  final List<InterconnectAttachmentGroupLogicalStructureRegion>? regions;

  InterconnectAttachmentGroupLogicalStructure({
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = pulumi.Input.encodeList<
          InterconnectAttachmentGroupLogicalStructureRegion,
          Map<String, dynamic>>(regionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectAttachmentGroupLogicalStructure.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructure(
      regions: map['regions'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectAttachmentGroupLogicalStructureRegion>(
              map['regions'],
              (value) =>
                  InterconnectAttachmentGroupLogicalStructureRegion.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
