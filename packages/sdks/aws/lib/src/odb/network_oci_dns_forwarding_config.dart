// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkOciDnsForwardingConfig {
  /// Domain name for which the DNS queries are forwarded.
  final pulumi.Input<String> domainName;
  /// IP address of the OCI DNS listener.
  final pulumi.Input<String> ociDnsListenerIp;

  /// Creates a new [NetworkOciDnsForwardingConfig].
  /// [domainName] Domain name for which the DNS queries are forwarded.
  /// [ociDnsListenerIp] IP address of the OCI DNS listener.
  const NetworkOciDnsForwardingConfig({
    required this.domainName,
    required this.ociDnsListenerIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ociDnsListenerIp': ociDnsListenerIp,
    };
  }

  factory NetworkOciDnsForwardingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkOciDnsForwardingConfig(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ociDnsListenerIp: pulumi.Input.fromValue(map['ociDnsListenerIp'] as String),
    );
  }
}
