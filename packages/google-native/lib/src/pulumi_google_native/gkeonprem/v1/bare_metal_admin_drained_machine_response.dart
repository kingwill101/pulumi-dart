// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminDrainedMachine represents the machines that are drained.
class BareMetalAdminDrainedMachineResponse {
  /// Drained machine IP address.
  final String nodeIp;

  BareMetalAdminDrainedMachineResponse({
    required this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeIp'] = nodeIp;
    return map;
  }

  factory BareMetalAdminDrainedMachineResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminDrainedMachineResponse(
      nodeIp: map['nodeIp'] as String,
    );
  }
}
