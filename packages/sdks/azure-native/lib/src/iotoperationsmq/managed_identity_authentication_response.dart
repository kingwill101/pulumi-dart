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
  ManagedIdentityAuthenticationResponse({
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
      audience: (map['audience'] as String).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName'] as String).input(),
    );
  }
}

