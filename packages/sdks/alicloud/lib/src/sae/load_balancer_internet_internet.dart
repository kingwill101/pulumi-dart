// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerInternetInternet {
  /// The SSL certificate. `https_cert_id` is required when HTTPS is selected
  final pulumi.Input<String>? httpsCertId;

  /// The SLB Port.
  final pulumi.Input<int>? port;

  /// The Network protocol. Valid values: `TCP` ,`HTTP`,`HTTPS`.
  final pulumi.Input<String>? protocol;

  /// The Container port.
  final pulumi.Input<int>? targetPort;

  /// Creates a new [LoadBalancerInternetInternet].
  /// [httpsCertId] The SSL certificate. `https_cert_id` is required when HTTPS is selected
  /// [port] The SLB Port.
  /// [protocol] The Network protocol. Valid values: `TCP` ,`HTTP`,`HTTPS`.
  /// [targetPort] The Container port.
  LoadBalancerInternetInternet({
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

  factory LoadBalancerInternetInternet.fromMap(Map<String, dynamic> map) {
    return LoadBalancerInternetInternet(
      httpsCertId: (() {
        final guardedValue = map['httpsCertId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetPort: (() {
        final guardedValue = map['targetPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
