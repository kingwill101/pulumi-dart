// ignore_for_file: unused_element, unnecessary_cast


class ManagedInstanceFailoverGroupPartnerRegion {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  final String? location;
  /// The partner replication role of the Managed Instance Failover Group.
  final String? role;

  /// Creates a new [ManagedInstanceFailoverGroupPartnerRegion].
  /// [location] The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  /// [role] The partner replication role of the Managed Instance Failover Group.
  ManagedInstanceFailoverGroupPartnerRegion({
    this.location,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'role': ?role,
    };
  }

  factory ManagedInstanceFailoverGroupPartnerRegion.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceFailoverGroupPartnerRegion(
      location: map['location'] == null ? null : map['location'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

