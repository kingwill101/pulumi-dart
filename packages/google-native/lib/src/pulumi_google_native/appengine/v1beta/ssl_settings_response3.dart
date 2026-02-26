// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration for a DomainMapping resource.
class SslSettingsResponse3 {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final String certificateId;

  /// ID of the managed AuthorizedCertificate resource currently being provisioned, if applicable. Until the new managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the provisioning process completes, the certificate_id field will reflect the new managed certificate and this field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the certificate_id field with an UpdateDomainMappingRequest.
  final String pendingManagedCertificateId;

  /// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  final String sslManagementType;

  SslSettingsResponse3({
    required this.certificateId,
    required this.pendingManagedCertificateId,
    required this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateId'] = certificateId;
    map['pendingManagedCertificateId'] = pendingManagedCertificateId;
    map['sslManagementType'] = sslManagementType;
    return map;
  }

  factory SslSettingsResponse3.fromMap(Map<String, dynamic> map) {
    return SslSettingsResponse3(
      certificateId: map['certificateId'] as String,
      pendingManagedCertificateId: map['pendingManagedCertificateId'] as String,
      sslManagementType: map['sslManagementType'] as String,
    );
  }
}
