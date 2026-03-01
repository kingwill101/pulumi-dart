// ignore_for_file: unused_element, unnecessary_cast

/// This message describes a subordinate CA's issuer certificate chain. This wrapper exists for compatibility reasons.
class SubordinateConfigChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final List<String> pemCertificates;

  /// Creates a new [SubordinateConfigChain].
  /// [pemCertificates] Expected to be in leaf-to-root order according to RFC 5246.
  SubordinateConfigChain({required this.pemCertificates});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pemCertificates': pemCertificates};
  }

  factory SubordinateConfigChain.fromMap(Map<String, dynamic> map) {
    return SubordinateConfigChain(
      pemCertificates: (map['pemCertificates'] as List).cast<String>(),
    );
  }
}
