// ignore_for_file: unused_element, unnecessary_cast

class ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final String pluginInstance;

  ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pluginInstance'] = pluginInstance;
    return map;
  }

  factory ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance.fromMap(
      Map<String, dynamic> map) {
    return ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance(
      pluginInstance: map['pluginInstance'] as String,
    );
  }
}
