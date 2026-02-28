// ignore_for_file: unused_element, unnecessary_cast

class NetworkOciDnsForwardingConfig {
  final String domainName;
  final String ociDnsListenerIp;

  /// Creates a new [NetworkOciDnsForwardingConfig].
  /// [domainName] Required.
  /// [ociDnsListenerIp] Required.
  NetworkOciDnsForwardingConfig({
    required this.domainName,
    required this.ociDnsListenerIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ociDnsListenerIp'] = ociDnsListenerIp;
    return map;
  }

  factory NetworkOciDnsForwardingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkOciDnsForwardingConfig(
      domainName: map['domainName'] as String,
      ociDnsListenerIp: map['ociDnsListenerIp'] as String,
    );
  }
}
