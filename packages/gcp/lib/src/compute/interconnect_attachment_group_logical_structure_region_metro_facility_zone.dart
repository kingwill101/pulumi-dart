// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone {
  /// (Output, Deprecated)
  /// URLs of Attachments in the given zone, to the given
  /// region, on Interconnects in the given facility and metro. Every
  /// Attachment in the AG has such an entry.
  final List<String>? attachment;

  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final List<String>? attachments;

  /// (Output)
  /// The zones that Attachments in this group are present
  /// in, in the given facilities.  This is inherited from their
  /// Interconnects.
  final String? zone;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone].
  /// [attachment] (Output, Deprecated)
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [zone] (Output)
  InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone({
    this.attachment,
    this.attachments,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachment': ?attachment,
      'attachments': ?attachments,
      'zone': ?zone,
    };
  }

  factory InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone(
      attachment: map['attachment'] == null
          ? null
          : (map['attachment'] as List).cast<String>(),
      attachments: map['attachments'] == null
          ? null
          : (map['attachments'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
