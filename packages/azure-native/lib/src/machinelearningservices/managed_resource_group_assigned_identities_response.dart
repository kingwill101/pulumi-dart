// ignore_for_file: unused_element, unnecessary_cast


/// Details for managed resource group assigned identities.
class ManagedResourceGroupAssignedIdentitiesResponse {
  /// Identity principal Id
  final String principalId;

  /// Creates a new [ManagedResourceGroupAssignedIdentitiesResponse].
  /// [principalId] Identity principal Id
  ManagedResourceGroupAssignedIdentitiesResponse({
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
    };
  }

  factory ManagedResourceGroupAssignedIdentitiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupAssignedIdentitiesResponse(
      principalId: map['principalId'] as String,
    );
  }
}

