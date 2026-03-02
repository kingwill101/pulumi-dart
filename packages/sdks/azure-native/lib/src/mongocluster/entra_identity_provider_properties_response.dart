// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft Entra ID provider properties.
class EntraIdentityProviderPropertiesResponse {
  /// The principal type of the user.
  final pulumi.Input<String> principalType;

  /// Creates a new [EntraIdentityProviderPropertiesResponse].
  /// [principalType] The principal type of the user.
  EntraIdentityProviderPropertiesResponse({
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalType': principalType,
    };
  }

  factory EntraIdentityProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EntraIdentityProviderPropertiesResponse(
      principalType: (map['principalType'] as String).input(),
    );
  }
}

