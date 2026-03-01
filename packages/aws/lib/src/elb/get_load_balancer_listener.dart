// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerListener {
  final int instancePort;
  final String instanceProtocol;
  final int lbPort;
  final String lbProtocol;
  final String sslCertificateId;

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
      instancePort: map['instancePort'] as int,
      instanceProtocol: map['instanceProtocol'] as String,
      lbPort: map['lbPort'] as int,
      lbProtocol: map['lbProtocol'] as String,
      sslCertificateId: map['sslCertificateId'] as String,
    );
  }
}

