// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerIntranetIntranet {
  /// The SSL certificate. `https_cert_id` is required when HTTPS is selected
  final String? httpsCertId;
  /// The SLB Port.
  final int? port;
  /// The Network protocol. Valid values: `TCP` ,`HTTP`,`HTTPS`.
  final String? protocol;
  /// The Container port.
  final int? targetPort;

  /// Creates a new [LoadBalancerIntranetIntranet].
  /// [httpsCertId] The SSL certificate. `https_cert_id` is required when HTTPS is selected
  /// [port] The SLB Port.
  /// [protocol] The Network protocol. Valid values: `TCP` ,`HTTP`,`HTTPS`.
  /// [targetPort] The Container port.
  LoadBalancerIntranetIntranet({
    this.httpsCertId,
    this.port,
    this.protocol,
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsCertId': ?httpsCertId,
      'port': ?port,
      'protocol': ?protocol,
      'targetPort': ?targetPort,
    };
  }

  factory LoadBalancerIntranetIntranet.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIntranetIntranet(
      httpsCertId: map['httpsCertId'] == null ? null : map['httpsCertId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      targetPort: map['targetPort'] == null ? null : map['targetPort'] as int,
    );
  }
}

