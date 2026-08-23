// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity authentication details.
class ManagedIdentityAuthenticationResponse {
  /// Token audience.
  final pulumi.Input<String> audience;
  /// Arc Extension name.
  final pulumi.Input<String>? extensionName;

  /// Creates a new [ManagedIdentityAuthenticationResponse].
  /// [audience] Token audience.
  /// [extensionName] Arc Extension name.
  const ManagedIdentityAuthenticationResponse({
    required this.audience,
    this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'extensionName': ?extensionName,
    };
  }

  factory ManagedIdentityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthenticationResponse(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      extensionName: (() { final guardedValue = map['extensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
