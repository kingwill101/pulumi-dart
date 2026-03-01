// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the PrometheusHaCluster provider properties.
class PrometheusHaClusterProviderInstancePropertiesResponse {
  /// Gets or sets the clusterName.
  final String? clusterName;
  /// Gets or sets the target machine name.
  final String? hostname;
  /// URL of the Node Exporter endpoint.
  final String? prometheusUrl;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'PrometheusHaCluster'.
  final String providerType;
  /// Gets or sets the cluster sid.
  final String? sid;
  /// Gets or sets the blob URI to SSL certificate for the HA cluster exporter.
  final String? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final String? sslPreference;

  /// Creates a new [PrometheusHaClusterProviderInstancePropertiesResponse].
  /// [clusterName] Gets or sets the clusterName.
  /// [hostname] Gets or sets the target machine name.
  /// [prometheusUrl] URL of the Node Exporter endpoint.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sid] Gets or sets the cluster sid.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the HA cluster exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  PrometheusHaClusterProviderInstancePropertiesResponse({
    this.clusterName,
    this.hostname,
    this.prometheusUrl,
    required this.providerType,
    this.sid,
    this.sslCertificateUri,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'hostname': ?hostname,
      'prometheusUrl': ?prometheusUrl,
      'providerType': providerType,
      'sid': ?sid,
      'sslCertificateUri': ?sslCertificateUri,
      'sslPreference': ?sslPreference,
    };
  }

  factory PrometheusHaClusterProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusHaClusterProviderInstancePropertiesResponse(
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      prometheusUrl: map['prometheusUrl'] == null ? null : map['prometheusUrl'] as String,
      providerType: map['providerType'] as String,
      sid: map['sid'] == null ? null : map['sid'] as String,
      sslCertificateUri: map['sslCertificateUri'] == null ? null : map['sslCertificateUri'] as String,
      sslPreference: map['sslPreference'] == null ? null : map['sslPreference'] as String,
    );
  }
}

