// ignore_for_file: unused_element, unnecessary_cast


/// The properties of custom domain for Spring Cloud Gateway
class GatewayCustomDomainProperties {
  /// The thumbprint of bound certificate.
  final String? thumbprint;

  /// Creates a new [GatewayCustomDomainProperties].
  /// [thumbprint] The thumbprint of bound certificate.
  GatewayCustomDomainProperties({
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': ?thumbprint,
    };
  }

  factory GatewayCustomDomainProperties.fromMap(Map<String, dynamic> map) {
    return GatewayCustomDomainProperties(
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

