// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint {
  /// The name of the VM instance of the leader network endpoint. The instance must
  /// already be attached to the NEG specified in the haPolicy.leader.backendGroup.
  final String instance;

  /// Creates a new [GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint].
  /// [instance] The name of the VM instance of the leader network endpoint. The instance must
  GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint({
    required this.instance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instance': instance};
  }

  factory GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint(
      instance: map['instance'] as String,
    );
  }
}
