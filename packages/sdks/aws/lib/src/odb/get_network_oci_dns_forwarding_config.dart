// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkOciDnsForwardingConfig {
  final pulumi.Input<String> domainName;
  final pulumi.Input<String> ociDnsListenerIp;

  /// Creates a new [GetNetworkOciDnsForwardingConfig].
  /// [domainName] Required.
  /// [ociDnsListenerIp] Required.
  GetNetworkOciDnsForwardingConfig({
    required this.domainName,
    required this.ociDnsListenerIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ociDnsListenerIp': ociDnsListenerIp,
    };
  }

  factory GetNetworkOciDnsForwardingConfig.fromMap(Map<String, dynamic> map) {
    return GetNetworkOciDnsForwardingConfig(
      domainName: (map['domainName'] as String).input(),
      ociDnsListenerIp: (map['ociDnsListenerIp'] as String).input(),
    );
  }
}

