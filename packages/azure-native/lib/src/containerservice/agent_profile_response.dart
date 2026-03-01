// ignore_for_file: unused_element, unnecessary_cast


/// Agent profile for the Fleet hub.
class AgentProfileResponse {
  /// The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  final String? subnetId;
  /// The virtual machine size of the Fleet hub.
  final String? vmSize;

  /// Creates a new [AgentProfileResponse].
  /// [subnetId] The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  /// [vmSize] The virtual machine size of the Fleet hub.
  AgentProfileResponse({
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory AgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return AgentProfileResponse(
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

