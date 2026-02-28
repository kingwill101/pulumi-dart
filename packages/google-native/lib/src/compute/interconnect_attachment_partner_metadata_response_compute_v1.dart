// ignore_for_file: unused_element, unnecessary_cast

/// Informational metadata about Partner attachments from Partners to display to customers. These fields are propagated from PARTNER_PROVIDER attachments to their corresponding PARTNER attachments.
class InterconnectAttachmentPartnerMetadataResponseComputeV1 {
  /// Plain text name of the Interconnect this attachment is connected to, as displayed in the Partner's portal. For instance "Chicago 1". This value may be validated to match approved Partner values.
  final String interconnectName;

  /// Plain text name of the Partner providing this attachment. This value may be validated to match approved Partner values.
  final String partnerName;

  /// URL of the Partner's portal for this Attachment. Partners may customise this to be a deep link to the specific resource on the Partner portal. This value may be validated to match approved Partner values.
  final String portalUrl;

  /// Creates a new [InterconnectAttachmentPartnerMetadataResponseComputeV1].
  /// [interconnectName] Plain text name of the Interconnect this attachment is connected to, as displayed in the Partner's portal. For instance "Chicago 1". This value may be validated to match approved Partner values.
  /// [partnerName] Plain text name of the Partner providing this attachment. This value may be validated to match approved Partner values.
  /// [portalUrl] URL of the Partner's portal for this Attachment. Partners may customise this to be a deep link to the specific resource on the Partner portal. This value may be validated to match approved Partner values.
  InterconnectAttachmentPartnerMetadataResponseComputeV1({
    required this.interconnectName,
    required this.partnerName,
    required this.portalUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interconnectName'] = interconnectName;
    map['partnerName'] = partnerName;
    map['portalUrl'] = portalUrl;
    return map;
  }

  factory InterconnectAttachmentPartnerMetadataResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentPartnerMetadataResponseComputeV1(
      interconnectName: map['interconnectName'] as String,
      partnerName: map['partnerName'] as String,
      portalUrl: map['portalUrl'] as String,
    );
  }
}
