// ignore_for_file: unused_element, unnecessary_cast

/// The name and status of the failover replica.
class InstanceFailoverReplica2 {
  /// The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  final bool? available;

  /// The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  final String? name;

  InstanceFailoverReplica2({
    this.available,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availableValue = available;
    if (availableValue != null) {
      map['available'] = availableValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory InstanceFailoverReplica2.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverReplica2(
      available: map['available'] == null ? null : map['available'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
