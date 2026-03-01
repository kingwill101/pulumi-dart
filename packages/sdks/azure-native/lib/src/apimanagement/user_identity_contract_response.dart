// ignore_for_file: unused_element, unnecessary_cast


/// User identity details.
class UserIdentityContractResponse {
  /// Identifier value within provider.
  final String? id;
  /// Identity provider name.
  final String? provider;

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
      id: map['id'] == null ? null : map['id'] as String,
      provider: map['provider'] == null ? null : map['provider'] as String,
    );
  }
}

