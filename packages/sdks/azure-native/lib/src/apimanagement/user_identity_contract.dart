// ignore_for_file: unused_element, unnecessary_cast


/// User identity details.
class UserIdentityContract {
  /// Identifier value within provider.
  final String? id;
  /// Identity provider name.
  final String? provider;

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
      id: map['id'] == null ? null : map['id'] as String,
      provider: map['provider'] == null ? null : map['provider'] as String,
    );
  }
}

