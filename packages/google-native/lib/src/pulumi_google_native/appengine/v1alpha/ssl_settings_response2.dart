// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration for a DomainMapping resource.
class SslSettingsResponse2 {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final String certificateId;

  /// Whether the mapped certificate is an App Engine managed certificate. Managed certificates are created by default with a domain mapping. To opt out, specify no_managed_certificate on a CREATE or UPDATE request.
  final bool isManagedCertificate;

  SslSettingsResponse2({
    required this.certificateId,
    required this.isManagedCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateId'] = certificateId;
    map['isManagedCertificate'] = isManagedCertificate;
    return map;
  }

  factory SslSettingsResponse2.fromMap(Map<String, dynamic> map) {
    return SslSettingsResponse2(
      certificateId: map['certificateId'] as String,
      isManagedCertificate: map['isManagedCertificate'] as bool,
    );
  }
}
