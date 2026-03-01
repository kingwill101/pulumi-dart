// ignore_for_file: unused_element, unnecessary_cast


/// InMageAzureV2 switch provider details.
class InMageAzureV2SwitchProviderDetailsResponse {
  /// The target appliance Id.
  final String targetApplianceId;
  /// The target fabric Id.
  final String targetFabricId;
  /// The target resource Id.
  final String targetResourceId;
  /// The target vault Id.
  final String targetVaultId;

  /// Creates a new [InMageAzureV2SwitchProviderDetailsResponse].
  /// [targetApplianceId] The target appliance Id.
  /// [targetFabricId] The target fabric Id.
  /// [targetResourceId] The target resource Id.
  /// [targetVaultId] The target vault Id.
  InMageAzureV2SwitchProviderDetailsResponse({
    required this.targetApplianceId,
    required this.targetFabricId,
    required this.targetResourceId,
    required this.targetVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetApplianceId': targetApplianceId,
      'targetFabricId': targetFabricId,
      'targetResourceId': targetResourceId,
      'targetVaultId': targetVaultId,
    };
  }

  factory InMageAzureV2SwitchProviderDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2SwitchProviderDetailsResponse(
      targetApplianceId: map['targetApplianceId'] as String,
      targetFabricId: map['targetFabricId'] as String,
      targetResourceId: map['targetResourceId'] as String,
      targetVaultId: map['targetVaultId'] as String,
    );
  }
}

