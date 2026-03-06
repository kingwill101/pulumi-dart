// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of custom domain for API portal
class ApiPortalCustomDomainProperties {
  /// The thumbprint of bound certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ApiPortalCustomDomainProperties].
  /// [thumbprint] The thumbprint of bound certificate.
  const ApiPortalCustomDomainProperties({
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': ?thumbprint,
    };
  }

  factory ApiPortalCustomDomainProperties.fromMap(Map<String, dynamic> map) {
    return ApiPortalCustomDomainProperties(
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

