// ignore_for_file: unused_element, unnecessary_cast

class ClientTlsPolicyClientCertificateCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to <span pulumi-lang-nodejs=""googleCloudPrivateSpiffe"" pulumi-lang-dotnet=""GoogleCloudPrivateSpiffe"" pulumi-lang-go=""googleCloudPrivateSpiffe"" pulumi-lang-python=""google_cloud_private_spiffe"" pulumi-lang-yaml=""googleCloudPrivateSpiffe"" pulumi-lang-java=""googleCloudPrivateSpiffe"">"google_cloud_private_spiffe"</span> to use Certificate Authority Service certificate provider instance.
  final String pluginInstance;

  ClientTlsPolicyClientCertificateCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pluginInstance'] = pluginInstance;
    return map;
  }

  factory ClientTlsPolicyClientCertificateCertificateProviderInstance.fromMap(
      Map<String, dynamic> map) {
    return ClientTlsPolicyClientCertificateCertificateProviderInstance(
      pluginInstance: map['pluginInstance'] as String,
    );
  }
}
