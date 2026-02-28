/// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
enum SslSettingsSslManagementType {
  sslManagementTypeUnspecified("SSL_MANAGEMENT_TYPE_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const SslSettingsSslManagementType(this.value);
  final String value;

  static SslSettingsSslManagementType fromValue(String value) {
    for (final item in SslSettingsSslManagementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslSettingsSslManagementType value: $value');
  }
}
