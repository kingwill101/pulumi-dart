// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminDrainingMachine represents the machines that are currently draining.
class BareMetalAdminDrainingMachineResponse {
  /// Draining machine IP address.
  final String nodeIp;

  /// The count of pods yet to drain.
  final int podCount;

  /// Creates a new [BareMetalAdminDrainingMachineResponse].
  /// [nodeIp] Draining machine IP address.
  /// [podCount] The count of pods yet to drain.
  BareMetalAdminDrainingMachineResponse({
    required this.nodeIp,
    required this.podCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeIp'] = nodeIp;
    map['podCount'] = podCount;
    return map;
  }

  factory BareMetalAdminDrainingMachineResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminDrainingMachineResponse(
      nodeIp: map['nodeIp'] as String,
      podCount: map['podCount'] as int,
    );
  }
}
