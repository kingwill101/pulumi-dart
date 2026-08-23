// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of custom domain for API portal
class ApiPortalCustomDomainPropertiesResponse {
  /// The thumbprint of bound certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ApiPortalCustomDomainPropertiesResponse].
  /// [thumbprint] The thumbprint of bound certificate.
  const ApiPortalCustomDomainPropertiesResponse({
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': ?thumbprint,
    };
  }

  factory ApiPortalCustomDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalCustomDomainPropertiesResponse(
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
