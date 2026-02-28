// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerListener {
  /// The port on the instance to route to
  final int instancePort;

  /// The protocol to use to the instance. Valid
  /// values are `HTTP`, `HTTPS`, `TCP`, or `SSL`
  final String instanceProtocol;

  /// The port to listen on for the load balancer
  final int lbPort;

  /// The protocol to listen on. Valid values are `HTTP`,
  /// `HTTPS`, `TCP`, or `SSL`
  final String lbProtocol;

  /// The ARN of an SSL certificate you have
  /// uploaded to AWS IAM. **Note ECDSA-specific restrictions below.  Only valid when `lb_protocol` is either HTTPS or SSL**
  final String? sslCertificateId;

  /// Creates a new [LoadBalancerListener].
  /// [instancePort] The port on the instance to route to
  /// [instanceProtocol] The protocol to use to the instance. Valid
  /// [lbPort] The port to listen on for the load balancer
  /// [lbProtocol] The protocol to listen on. Valid values are `HTTP`,
  /// [sslCertificateId] The ARN of an SSL certificate you have
  LoadBalancerListener({
    required this.instancePort,
    required this.instanceProtocol,
    required this.lbPort,
    required this.lbProtocol,
    this.sslCertificateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instancePort'] = instancePort;
    map['instanceProtocol'] = instanceProtocol;
    map['lbPort'] = lbPort;
    map['lbProtocol'] = lbProtocol;
    final sslCertificateIdValue = sslCertificateId;
    if (sslCertificateIdValue != null) {
      map['sslCertificateId'] = sslCertificateIdValue;
    }
    return map;
  }

  factory LoadBalancerListener.fromMap(Map<String, dynamic> map) {
    return LoadBalancerListener(
      instancePort: map['instancePort'] as int,
      instanceProtocol: map['instanceProtocol'] as String,
      lbPort: map['lbPort'] as int,
      lbProtocol: map['lbProtocol'] as String,
      sslCertificateId: map['sslCertificateId'] == null
          ? null
          : map['sslCertificateId'] as String,
    );
  }
}
