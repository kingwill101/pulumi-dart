// ignore_for_file: unused_element, unnecessary_cast


/// Subject Alternative Names (SANs) for certificate.
class SanForCertResponse {
  /// DNS SANs.
  final List<String> dns;
  /// IP address SANs.
  final List<String> ip;

  /// Creates a new [SanForCertResponse].
  /// [dns] DNS SANs.
  /// [ip] IP address SANs.
  SanForCertResponse({
    required this.dns,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': dns,
      'ip': ip,
    };
  }

  factory SanForCertResponse.fromMap(Map<String, dynamic> map) {
    return SanForCertResponse(
      dns: (map['dns'] as List).cast<String>(),
      ip: (map['ip'] as List).cast<String>(),
    );
  }
}

