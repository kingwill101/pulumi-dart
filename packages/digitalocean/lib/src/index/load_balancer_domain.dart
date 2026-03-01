// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerDomain {
  /// **Deprecated** The certificate ID to be used for TLS handshaking.
  final String? certificateId;
  /// The certificate name to be used for TLS handshaking.
  final String? certificateName;
  /// Control flag to specify whether the domain is managed by DigitalOcean.
  final bool? isManaged;
  /// The domain name to be used for ingressing traffic to a Global Load Balancer.
  final String name;
  /// list of domain SSL validation errors
  final List<String>? sslValidationErrorReasons;
  /// list of domain verification errors
  final List<String>? verificationErrorReasons;

  /// Creates a new [LoadBalancerDomain].
  /// [certificateId] **Deprecated** The certificate ID to be used for TLS handshaking.
  /// [certificateName] The certificate name to be used for TLS handshaking.
  /// [isManaged] Control flag to specify whether the domain is managed by DigitalOcean.
  /// [name] The domain name to be used for ingressing traffic to a Global Load Balancer.
  /// [sslValidationErrorReasons] list of domain SSL validation errors
  /// [verificationErrorReasons] list of domain verification errors
  LoadBalancerDomain({
    this.certificateId,
    this.certificateName,
    this.isManaged,
    required this.name,
    this.sslValidationErrorReasons,
    this.verificationErrorReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'isManaged': ?isManaged,
      'name': name,
      'sslValidationErrorReasons': ?sslValidationErrorReasons,
      'verificationErrorReasons': ?verificationErrorReasons,
    };
  }

  factory LoadBalancerDomain.fromMap(Map<String, dynamic> map) {
    return LoadBalancerDomain(
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      isManaged: map['isManaged'] == null ? null : map['isManaged'] as bool,
      name: map['name'] as String,
      sslValidationErrorReasons: map['sslValidationErrorReasons'] == null ? null : (map['sslValidationErrorReasons'] as List).cast<String>(),
      verificationErrorReasons: map['verificationErrorReasons'] == null ? null : (map['verificationErrorReasons'] as List).cast<String>(),
    );
  }
}

