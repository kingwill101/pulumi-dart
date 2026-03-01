// ignore_for_file: unused_element, unnecessary_cast

/// Metadata associated with PartnerTenant and is provided by the Partner.
class GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse {
  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final String internalTenantId;

  /// Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  final String partnerTenantId;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse].
  /// [internalTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  /// [partnerTenantId] Optional. UUID used by the Partner to refer to the PartnerTenant in their internal systems.
  GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse({
    required this.internalTenantId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalTenantId': internalTenantId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse(
      internalTenantId: map['internalTenantId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
    );
  }
}
