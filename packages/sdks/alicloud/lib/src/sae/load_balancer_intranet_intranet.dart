// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerIntranetIntranet {
  /// The SSL certificate. `https_cert_id` is required when HTTPS is selected
  final pulumi.Input<String>? httpsCertId;
  /// The SLB Port.
  final pulumi.Input<int>? port;
  /// The Network protocol. Valid values: `TCP` ,`HTTP`,`HTTPS`.
  final pulumi.Input<String>? protocol;
  /// The Container port.
  final pulumi.Input<int>? targetPort;

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
      httpsCertId: map['httpsCertId'] == null ? null : (map['httpsCertId']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      targetPort: map['targetPort'] == null ? null : (map['targetPort']! as int).input(),
    );
  }
}

