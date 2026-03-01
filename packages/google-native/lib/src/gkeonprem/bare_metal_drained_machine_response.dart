// ignore_for_file: unused_element, unnecessary_cast

/// Represents a machine that is currently drained.
class BareMetalDrainedMachineResponse {
  /// Drained machine IP address.
  final String nodeIp;

  /// Creates a new [BareMetalDrainedMachineResponse].
  /// [nodeIp] Drained machine IP address.
  BareMetalDrainedMachineResponse({required this.nodeIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeIp': nodeIp};
  }

  factory BareMetalDrainedMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalDrainedMachineResponse(nodeIp: map['nodeIp'] as String);
  }
}
