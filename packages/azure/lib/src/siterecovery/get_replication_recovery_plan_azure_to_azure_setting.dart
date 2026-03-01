// ignore_for_file: unused_element, unnecessary_cast


class GetReplicationRecoveryPlanAzureToAzureSetting {
  final String primaryEdgeZone;
  final String primaryZone;
  final String recoveryEdgeZone;
  final String recoveryZone;

  /// Creates a new [GetReplicationRecoveryPlanAzureToAzureSetting].
  /// [primaryEdgeZone] Required.
  /// [primaryZone] Required.
  /// [recoveryEdgeZone] Required.
  /// [recoveryZone] Required.
  GetReplicationRecoveryPlanAzureToAzureSetting({
    required this.primaryEdgeZone,
    required this.primaryZone,
    required this.recoveryEdgeZone,
    required this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryEdgeZone': primaryEdgeZone,
      'primaryZone': primaryZone,
      'recoveryEdgeZone': recoveryEdgeZone,
      'recoveryZone': recoveryZone,
    };
  }

  factory GetReplicationRecoveryPlanAzureToAzureSetting.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanAzureToAzureSetting(
      primaryEdgeZone: map['primaryEdgeZone'] as String,
      primaryZone: map['primaryZone'] as String,
      recoveryEdgeZone: map['recoveryEdgeZone'] as String,
      recoveryZone: map['recoveryZone'] as String,
    );
  }
}

