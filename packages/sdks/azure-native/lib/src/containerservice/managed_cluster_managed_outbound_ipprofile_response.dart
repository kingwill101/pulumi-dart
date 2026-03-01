// ignore_for_file: unused_element, unnecessary_cast


/// Profile of the managed outbound IP resources of the managed cluster.
class ManagedClusterManagedOutboundIPProfileResponse {
  /// The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  final int? count;

  /// Creates a new [ManagedClusterManagedOutboundIPProfileResponse].
  /// [count] The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  ManagedClusterManagedOutboundIPProfileResponse({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ManagedClusterManagedOutboundIPProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterManagedOutboundIPProfileResponse(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}

