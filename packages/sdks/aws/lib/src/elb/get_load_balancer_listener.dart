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
  const GetLoadBalancerListener({
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
      instancePort: pulumi.Input.fromValue((map['instancePort'] as num).toInt()),
      instanceProtocol: pulumi.Input.fromValue(map['instanceProtocol'] as String),
      lbPort: pulumi.Input.fromValue((map['lbPort'] as num).toInt()),
      lbProtocol: pulumi.Input.fromValue(map['lbProtocol'] as String),
      sslCertificateId: pulumi.Input.fromValue(map['sslCertificateId'] as String),
    );
  }
}
