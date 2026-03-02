// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User identity details.
class UserIdentityContractResponse {
  /// Identifier value within provider.
  final pulumi.Input<String>? id;
  /// Identity provider name.
  final pulumi.Input<String>? provider;

  /// Creates a new [UserIdentityContractResponse].
  /// [id] Identifier value within provider.
  /// [provider] Identity provider name.
  UserIdentityContractResponse({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      provider: map['provider'] == null ? null : (map['provider'] as String).input(),
    );
  }
}

