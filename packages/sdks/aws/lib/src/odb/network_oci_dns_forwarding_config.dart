// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkOciDnsForwardingConfig {
  final pulumi.Input<String> domainName;
  final pulumi.Input<String> ociDnsListenerIp;

  /// Creates a new [NetworkOciDnsForwardingConfig].
  /// [domainName] Required.
  /// [ociDnsListenerIp] Required.
  NetworkOciDnsForwardingConfig({
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

