// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom domain of app resource payload.
class CustomDomainPropertiesResponse {
  /// The app name of domain.
  final pulumi.Input<String> appName;
  /// The bound certificate name of domain.
  final pulumi.Input<String>? certName;
  /// Provisioning state of the Domain
  final pulumi.Input<String> provisioningState;
  /// The thumbprint of bound certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CustomDomainPropertiesResponse].
  /// [appName] The app name of domain.
  /// [certName] The bound certificate name of domain.
  /// [provisioningState] Provisioning state of the Domain
  /// [thumbprint] The thumbprint of bound certificate.
  const CustomDomainPropertiesResponse({
    required this.appName,
    this.certName,
    required this.provisioningState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'certName': ?certName,
      'provisioningState': provisioningState,
      'thumbprint': ?thumbprint,
    };
  }

  factory CustomDomainPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainPropertiesResponse(
      appName: pulumi.Input.fromValue(map['appName'] as String),
      certName: (() { final guardedValue = map['certName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
