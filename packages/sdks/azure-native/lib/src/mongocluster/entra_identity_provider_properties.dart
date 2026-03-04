// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft Entra ID provider properties.
class EntraIdentityProviderProperties {
  /// The principal type of the user.
  final pulumi.Input<String> principalType;

  /// Creates a new [EntraIdentityProviderProperties].
  /// [principalType] The principal type of the user.
  EntraIdentityProviderProperties({required this.principalType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'principalType': principalType};
  }

  factory EntraIdentityProviderProperties.fromMap(Map<String, dynamic> map) {
    return EntraIdentityProviderProperties(
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
    );
  }
}
