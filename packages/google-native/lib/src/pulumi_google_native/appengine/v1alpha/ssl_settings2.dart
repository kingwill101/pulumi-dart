// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration for a DomainMapping resource.
class SslSettings2 {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify no_managed_certificate on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final String? certificateId;

  SslSettings2({
    this.certificateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateIdValue = certificateId;
    if (certificateIdValue != null) {
      map['certificateId'] = certificateIdValue;
    }
    return map;
  }

  factory SslSettings2.fromMap(Map<String, dynamic> map) {
    return SslSettings2(
      certificateId:
          map['certificateId'] == null ? null : map['certificateId'] as String,
    );
  }
}
