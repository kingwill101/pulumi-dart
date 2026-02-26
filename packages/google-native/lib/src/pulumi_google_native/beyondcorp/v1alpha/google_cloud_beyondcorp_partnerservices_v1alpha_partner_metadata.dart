// ignore_for_file: unused_element, unnecessary_cast

/// Metadata associated with PartnerTenant and is provided by the Partner.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata {
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final String? internalTenantId;

  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final String? partnerTenantId;

  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata({
    this.internalTenantId,
    this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final internalTenantIdValue = internalTenantId;
    if (internalTenantIdValue != null) {
      map['internalTenantId'] = internalTenantIdValue;
    }
    final partnerTenantIdValue = partnerTenantId;
    if (partnerTenantIdValue != null) {
      map['partnerTenantId'] = partnerTenantIdValue;
    }
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata(
      internalTenantId: map['internalTenantId'] == null
          ? null
          : map['internalTenantId'] as String,
      partnerTenantId: map['partnerTenantId'] == null
          ? null
          : map['partnerTenantId'] as String,
    );
  }
}
