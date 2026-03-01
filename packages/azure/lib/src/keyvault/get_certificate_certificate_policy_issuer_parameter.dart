// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicyIssuerParameter {
  /// Specifies the name of the Key Vault Certificate.
  final String name;

  /// Creates a new [GetCertificateCertificatePolicyIssuerParameter].
  /// [name] Specifies the name of the Key Vault Certificate.
  GetCertificateCertificatePolicyIssuerParameter({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCertificateCertificatePolicyIssuerParameter.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyIssuerParameter(
      name: map['name'] as String,
    );
  }
}

