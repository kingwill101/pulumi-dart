// ignore_for_file: unused_element, unnecessary_cast


class ManagedClusterIdentityResponseUserAssignedIdentities {
  /// The client id of user assigned identity.
  final String clientId;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [ManagedClusterIdentityResponseUserAssignedIdentities].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  ManagedClusterIdentityResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory ManagedClusterIdentityResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIdentityResponseUserAssignedIdentities(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

