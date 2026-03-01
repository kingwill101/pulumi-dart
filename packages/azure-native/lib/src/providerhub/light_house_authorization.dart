// ignore_for_file: unused_element, unnecessary_cast


class LightHouseAuthorization {
  /// The principal id.
  final String principalId;
  /// The role definition id.
  final String roleDefinitionId;

  /// Creates a new [LightHouseAuthorization].
  /// [principalId] The principal id.
  /// [roleDefinitionId] The role definition id.
  LightHouseAuthorization({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory LightHouseAuthorization.fromMap(Map<String, dynamic> map) {
    return LightHouseAuthorization(
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

