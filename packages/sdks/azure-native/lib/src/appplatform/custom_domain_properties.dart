// ignore_for_file: unused_element, unnecessary_cast


/// Custom domain of app resource payload.
class CustomDomainProperties {
  /// The bound certificate name of domain.
  final String? certName;
  /// The thumbprint of bound certificate.
  final String? thumbprint;

  /// Creates a new [CustomDomainProperties].
  /// [certName] The bound certificate name of domain.
  /// [thumbprint] The thumbprint of bound certificate.
  CustomDomainProperties({
    this.certName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': ?certName,
      'thumbprint': ?thumbprint,
    };
  }

  factory CustomDomainProperties.fromMap(Map<String, dynamic> map) {
    return CustomDomainProperties(
      certName: map['certName'] == null ? null : map['certName'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

