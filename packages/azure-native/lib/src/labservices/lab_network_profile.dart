// ignore_for_file: unused_element, unnecessary_cast


/// Profile for how to handle networking for Labs.
class LabNetworkProfile {
  /// The external load balancer resource id
  final String? loadBalancerId;
  /// The external public IP resource id
  final String? publicIpId;
  /// The external subnet resource id
  final String? subnetId;

  /// Creates a new [LabNetworkProfile].
  /// [loadBalancerId] The external load balancer resource id
  /// [publicIpId] The external public IP resource id
  /// [subnetId] The external subnet resource id
  LabNetworkProfile({
    this.loadBalancerId,
    this.publicIpId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': ?loadBalancerId,
      'publicIpId': ?publicIpId,
      'subnetId': ?subnetId,
    };
  }

  factory LabNetworkProfile.fromMap(Map<String, dynamic> map) {
    return LabNetworkProfile(
      loadBalancerId: map['loadBalancerId'] == null ? null : map['loadBalancerId'] as String,
      publicIpId: map['publicIpId'] == null ? null : map['publicIpId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

