// ignore_for_file: unused_element, unnecessary_cast

class ClientTlsPolicyServerValidationCaCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final String pluginInstance;

  /// Creates a new [ClientTlsPolicyServerValidationCaCertificateProviderInstance].
  /// [pluginInstance] Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  ClientTlsPolicyServerValidationCaCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pluginInstance'] = pluginInstance;
    return map;
  }

  factory ClientTlsPolicyServerValidationCaCertificateProviderInstance.fromMap(
      Map<String, dynamic> map) {
    return ClientTlsPolicyServerValidationCaCertificateProviderInstance(
      pluginInstance: map['pluginInstance'] as String,
    );
  }
}
