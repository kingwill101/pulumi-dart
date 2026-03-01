// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region.dart';

class InterconnectAttachmentGroupLogicalStructure {
  /// (Output)
  /// Regions used to explain this blocker in more
  /// detail. These are region names formatted like "us-central1". This
  /// will be set for some blockers (like INCOMPATIBLE_REGIONS) but does
  /// not apply to others.
  final List<InterconnectAttachmentGroupLogicalStructureRegion>? regions;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructure].
  /// [regions] (Output)
  InterconnectAttachmentGroupLogicalStructure({this.regions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions == null
          ? null
          : pulumi.Input.encodeList<
              InterconnectAttachmentGroupLogicalStructureRegion,
              Map<String, dynamic>
            >(regions!, (value) => value.toMap()),
    };
  }

  factory InterconnectAttachmentGroupLogicalStructure.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentGroupLogicalStructure(
      regions: map['regions'] == null
          ? null
          : pulumi.Input.decodeList<
              InterconnectAttachmentGroupLogicalStructureRegion
            >(
              map['regions'],
              (value) =>
                  InterconnectAttachmentGroupLogicalStructureRegion.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
