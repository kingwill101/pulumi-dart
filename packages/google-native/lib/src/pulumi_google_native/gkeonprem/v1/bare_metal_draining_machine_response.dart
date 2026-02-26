// ignore_for_file: unused_element, unnecessary_cast

/// Represents a machine that is currently draining.
class BareMetalDrainingMachineResponse {
  /// Draining machine IP address.
  final String nodeIp;

  /// The count of pods yet to drain.
  final int podCount;

  BareMetalDrainingMachineResponse({
    required this.nodeIp,
    required this.podCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeIp'] = nodeIp;
    map['podCount'] = podCount;
    return map;
  }

  factory BareMetalDrainingMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalDrainingMachineResponse(
      nodeIp: map['nodeIp'] as String,
      podCount: map['podCount'] as int,
    );
  }
}
