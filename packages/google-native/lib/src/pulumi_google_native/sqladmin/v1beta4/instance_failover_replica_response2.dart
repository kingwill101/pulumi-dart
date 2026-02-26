// ignore_for_file: unused_element, unnecessary_cast

/// The name and status of the failover replica.
class InstanceFailoverReplicaResponse2 {
  /// The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  final bool available;

  /// The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  final String name;

  InstanceFailoverReplicaResponse2({
    required this.available,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['available'] = available;
    map['name'] = name;
    return map;
  }

  factory InstanceFailoverReplicaResponse2.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverReplicaResponse2(
      available: map['available'] as bool,
      name: map['name'] as String,
    );
  }
}
