// ignore_for_file: unused_element, unnecessary_cast


/// Agent profile for the Fleet hub.
class AgentProfile {
  /// The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  final String? subnetId;
  /// The virtual machine size of the Fleet hub.
  final String? vmSize;

  /// Creates a new [AgentProfile].
  /// [subnetId] The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  /// [vmSize] The virtual machine size of the Fleet hub.
  AgentProfile({
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory AgentProfile.fromMap(Map<String, dynamic> map) {
    return AgentProfile(
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

