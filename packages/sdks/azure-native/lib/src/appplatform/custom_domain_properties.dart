// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom domain of app resource payload.
class CustomDomainProperties {
  /// The bound certificate name of domain.
  final pulumi.Input<String>? certName;
  /// The thumbprint of bound certificate.
  final pulumi.Input<String>? thumbprint;

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
      certName: map['certName'] == null ? null : (map['certName']! as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

