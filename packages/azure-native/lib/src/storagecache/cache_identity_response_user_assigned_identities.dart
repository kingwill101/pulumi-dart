// ignore_for_file: unused_element, unnecessary_cast


class CacheIdentityResponseUserAssignedIdentities {
  /// The client ID of the user-assigned identity.
  final String clientId;
  /// The principal ID of the user-assigned identity.
  final String principalId;

  /// Creates a new [CacheIdentityResponseUserAssignedIdentities].
  /// [clientId] The client ID of the user-assigned identity.
  /// [principalId] The principal ID of the user-assigned identity.
  CacheIdentityResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory CacheIdentityResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return CacheIdentityResponseUserAssignedIdentities(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

