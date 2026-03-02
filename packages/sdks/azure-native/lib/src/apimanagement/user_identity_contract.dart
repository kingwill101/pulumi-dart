// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User identity details.
class UserIdentityContract {
  /// Identifier value within provider.
  final pulumi.Input<String>? id;
  /// Identity provider name.
  final pulumi.Input<String>? provider;

  /// Creates a new [UserIdentityContract].
  /// [id] Identifier value within provider.
  /// [provider] Identity provider name.
  UserIdentityContract({
    this.id,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'provider': ?provider,
    };
  }

  factory UserIdentityContract.fromMap(Map<String, dynamic> map) {
    return UserIdentityContract(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      provider: map['provider'] == null ? null : (map['provider']! as String).input(),
    );
  }
}

