// ignore_for_file: unused_element, unnecessary_cast


class ManagedServiceIdentityResponseUserAssignedIdentities {
  /// The client id of user assigned identity.
  final String clientId;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [ManagedServiceIdentityResponseUserAssignedIdentities].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  ManagedServiceIdentityResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory ManagedServiceIdentityResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentityResponseUserAssignedIdentities(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

