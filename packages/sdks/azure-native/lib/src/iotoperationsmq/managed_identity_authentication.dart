// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity authentication details.
class ManagedIdentityAuthentication {
  /// Token audience.
  final pulumi.Input<String> audience;
  /// Arc Extension name.
  final pulumi.Input<String>? extensionName;

  /// Creates a new [ManagedIdentityAuthentication].
  /// [audience] Token audience.
  /// [extensionName] Arc Extension name.
  ManagedIdentityAuthentication({
    required this.audience,
    this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'extensionName': ?extensionName,
    };
  }

  factory ManagedIdentityAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthentication(
      audience: (map['audience'] as String).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName']! as String).input(),
    );
  }
}

