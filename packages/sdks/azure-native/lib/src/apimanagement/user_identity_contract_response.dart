// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User identity details.
class UserIdentityContractResponse {
  /// Identifier value within provider.
  final pulumi.Input<String?>? id;
  /// Identity provider name.
  final pulumi.Input<String?>? provider;

  /// Creates a new [UserIdentityContractResponse].
  /// [id] Identifier value within provider.
  /// [provider] Identity provider name.
  const UserIdentityContractResponse({
    this.id,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'provider': ?provider,
    };
  }

  factory UserIdentityContractResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityContractResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
