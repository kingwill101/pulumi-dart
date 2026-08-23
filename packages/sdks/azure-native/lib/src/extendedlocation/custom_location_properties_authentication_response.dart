// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is optional input that contains the authentication that should be used to generate the namespace.
class CustomLocationPropertiesAuthenticationResponse {
  /// The type of the Custom Locations authentication
  final pulumi.Input<String>? type;

  /// Creates a new [CustomLocationPropertiesAuthenticationResponse].
  /// [type] The type of the Custom Locations authentication
  const CustomLocationPropertiesAuthenticationResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory CustomLocationPropertiesAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return CustomLocationPropertiesAuthenticationResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
