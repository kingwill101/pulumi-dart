// ignore_for_file: unused_element, unnecessary_cast


/// BareMetalAdminDrainedMachine represents the machines that are drained.
class BareMetalAdminDrainedMachineResponse {
  /// Drained machine IP address.
  final String nodeIp;

  /// Creates a new [BareMetalAdminDrainedMachineResponse].
  /// [nodeIp] Drained machine IP address.
  BareMetalAdminDrainedMachineResponse({
    required this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
    };
  }

  factory BareMetalAdminDrainedMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminDrainedMachineResponse(
      nodeIp: map['nodeIp'] as String,
    );
  }
}

