/// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
enum SslSettingsSslManagementType2 {
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const SslSettingsSslManagementType2(this.value);
  final String value;

  static SslSettingsSslManagementType2 fromValue(String value) {
    for (final item in SslSettingsSslManagementType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslSettingsSslManagementType2 value: $value');
  }
}
