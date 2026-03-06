// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerListener {
  /// The port on the instance to route to
  final pulumi.Input<int> instancePort;
  /// The protocol to use to the instance. Valid
  /// values are `HTTP`, `HTTPS`, `TCP`, or `SSL`
  final pulumi.Input<String> instanceProtocol;
  /// The port to listen on for the load balancer
  final pulumi.Input<int> lbPort;
  /// The protocol to listen on. Valid values are `HTTP`,
  /// `HTTPS`, `TCP`, or `SSL`
  final pulumi.Input<String> lbProtocol;
  /// The ARN of an SSL certificate you have
  /// uploaded to AWS IAM. **Note ECDSA-specific restrictions below.  Only valid when `lb_protocol` is either HTTPS or SSL**
  final pulumi.Input<String>? sslCertificateId;

  /// Creates a new [LoadBalancerListener].
  /// [instancePort] The port on the instance to route to
  /// [instanceProtocol] The protocol to use to the instance. Valid
  /// [lbPort] The port to listen on for the load balancer
  /// [lbProtocol] The protocol to listen on. Valid values are `HTTP`,
  /// [sslCertificateId] The ARN of an SSL certificate you have
  const LoadBalancerListener({
    required this.instancePort,
    required this.instanceProtocol,
    required this.lbPort,
    required this.lbProtocol,
    this.sslCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': instancePort,
      'instanceProtocol': instanceProtocol,
      'lbPort': lbPort,
      'lbProtocol': lbProtocol,
      'sslCertificateId': ?sslCertificateId,
    };
  }

  factory LoadBalancerListener.fromMap(Map<String, dynamic> map) {
    return LoadBalancerListener(
      instancePort: pulumi.Input.fromValue(map['instancePort'] as int),
      instanceProtocol: pulumi.Input.fromValue(map['instanceProtocol'] as String),
      lbPort: pulumi.Input.fromValue(map['lbPort'] as int),
      lbProtocol: pulumi.Input.fromValue(map['lbProtocol'] as String),
      sslCertificateId: (() { final guardedValue = map['sslCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

