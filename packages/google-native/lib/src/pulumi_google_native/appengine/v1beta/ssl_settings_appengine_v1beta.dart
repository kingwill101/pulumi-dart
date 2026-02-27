// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_settings_ssl_management_type_appengine_v1beta.dart';

/// SSL configuration for a DomainMapping resource.
class SslSettingsAppengineV1beta {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final String? certificateId;

  /// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  final SslSettingsSslManagementTypeAppengineV1beta? sslManagementType;

  SslSettingsAppengineV1beta({
    this.certificateId,
    this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateIdValue = certificateId;
    if (certificateIdValue != null) {
      map['certificateId'] = certificateIdValue;
    }
    final sslManagementTypeValue = sslManagementType;
    if (sslManagementTypeValue != null) {
      map['sslManagementType'] = sslManagementTypeValue.value;
    }
    return map;
  }

  factory SslSettingsAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return SslSettingsAppengineV1beta(
      certificateId:
          map['certificateId'] == null ? null : map['certificateId'] as String,
      sslManagementType: map['sslManagementType'] == null
          ? null
          : SslSettingsSslManagementTypeAppengineV1beta.fromValue(
              map['sslManagementType'] as String),
    );
  }
}
