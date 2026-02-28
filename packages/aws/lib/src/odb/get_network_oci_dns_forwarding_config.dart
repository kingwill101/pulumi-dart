// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkOciDnsForwardingConfig {
  final String domainName;
  final String ociDnsListenerIp;

  /// Creates a new [GetNetworkOciDnsForwardingConfig].
  /// [domainName] Required.
  /// [ociDnsListenerIp] Required.
  GetNetworkOciDnsForwardingConfig({
    required this.domainName,
    required this.ociDnsListenerIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ociDnsListenerIp'] = ociDnsListenerIp;
    return map;
  }

  factory GetNetworkOciDnsForwardingConfig.fromMap(Map<String, dynamic> map) {
    return GetNetworkOciDnsForwardingConfig(
      domainName: map['domainName'] as String,
      ociDnsListenerIp: map['ociDnsListenerIp'] as String,
    );
  }
}
