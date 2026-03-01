// ignore_for_file: unused_element, unnecessary_cast

/// Informational metadata about Partner attachments from Partners to display to customers. These fields are propagated from PARTNER_PROVIDER attachments to their corresponding PARTNER attachments.
class InterconnectAttachmentPartnerMetadataComputeV1 {
  /// Plain text name of the Interconnect this attachment is connected to, as displayed in the Partner's portal. For instance "Chicago 1". This value may be validated to match approved Partner values.
  final String? interconnectName;

  /// Plain text name of the Partner providing this attachment. This value may be validated to match approved Partner values.
  final String? partnerName;

  /// URL of the Partner's portal for this Attachment. Partners may customise this to be a deep link to the specific resource on the Partner portal. This value may be validated to match approved Partner values.
  final String? portalUrl;

  /// Creates a new [InterconnectAttachmentPartnerMetadataComputeV1].
  /// [interconnectName] Plain text name of the Interconnect this attachment is connected to, as displayed in the Partner's portal. For instance "Chicago 1". This value may be validated to match approved Partner values.
  /// [partnerName] Plain text name of the Partner providing this attachment. This value may be validated to match approved Partner values.
  /// [portalUrl] URL of the Partner's portal for this Attachment. Partners may customise this to be a deep link to the specific resource on the Partner portal. This value may be validated to match approved Partner values.
  InterconnectAttachmentPartnerMetadataComputeV1({
    this.interconnectName,
    this.partnerName,
    this.portalUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectName': ?interconnectName,
      'partnerName': ?partnerName,
      'portalUrl': ?portalUrl,
    };
  }

  factory InterconnectAttachmentPartnerMetadataComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentPartnerMetadataComputeV1(
      interconnectName: map['interconnectName'] == null
          ? null
          : map['interconnectName'] as String,
      partnerName: map['partnerName'] == null
          ? null
          : map['partnerName'] as String,
      portalUrl: map['portalUrl'] == null ? null : map['portalUrl'] as String,
    );
  }
}
