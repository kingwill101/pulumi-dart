// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of custom domain for Spring Cloud Gateway
class GatewayCustomDomainPropertiesResponse {
  /// The thumbprint of bound certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [GatewayCustomDomainPropertiesResponse].
  /// [thumbprint] The thumbprint of bound certificate.
  GatewayCustomDomainPropertiesResponse({
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': ?thumbprint,
    };
  }

  factory GatewayCustomDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayCustomDomainPropertiesResponse(
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

