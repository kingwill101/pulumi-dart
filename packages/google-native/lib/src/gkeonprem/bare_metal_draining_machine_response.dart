// ignore_for_file: unused_element, unnecessary_cast


/// Represents a machine that is currently draining.
class BareMetalDrainingMachineResponse {
  /// Draining machine IP address.
  final String nodeIp;
  /// The count of pods yet to drain.
  final int podCount;

  /// Creates a new [BareMetalDrainingMachineResponse].
  /// [nodeIp] Draining machine IP address.
  /// [podCount] The count of pods yet to drain.
  BareMetalDrainingMachineResponse({
    required this.nodeIp,
    required this.podCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
      'podCount': podCount,
    };
  }

  factory BareMetalDrainingMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalDrainingMachineResponse(
      nodeIp: map['nodeIp'] as String,
      podCount: map['podCount'] as int,
    );
  }
}

