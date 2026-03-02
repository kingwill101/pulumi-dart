// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerListener {
  final pulumi.Input<int> instancePort;
  final pulumi.Input<String> instanceProtocol;
  final pulumi.Input<int> lbPort;
  final pulumi.Input<String> lbProtocol;
  final pulumi.Input<String> sslCertificateId;

  /// Creates a new [GetLoadBalancerListener].
  /// [instancePort] Required.
  /// [instanceProtocol] Required.
  /// [lbPort] Required.
  /// [lbProtocol] Required.
  /// [sslCertificateId] Required.
  GetLoadBalancerListener({
    required this.instancePort,
    required this.instanceProtocol,
    required this.lbPort,
    required this.lbProtocol,
    required this.sslCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': instancePort,
      'instanceProtocol': instanceProtocol,
      'lbPort': lbPort,
      'lbProtocol': lbProtocol,
      'sslCertificateId': sslCertificateId,
    };
  }

  factory GetLoadBalancerListener.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerListener(
      instancePort: (map['instancePort'] as int).input(),
      instanceProtocol: (map['instanceProtocol'] as String).input(),
      lbPort: (map['lbPort'] as int).input(),
      lbProtocol: (map['lbProtocol'] as String).input(),
      sslCertificateId: (map['sslCertificateId'] as String).input(),
    );
  }
}

