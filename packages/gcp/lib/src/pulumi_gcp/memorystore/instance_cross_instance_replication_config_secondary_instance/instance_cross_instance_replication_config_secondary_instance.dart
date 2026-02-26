// ignore_for_file: unused_element, unnecessary_cast

class InstanceCrossInstanceReplicationConfigSecondaryInstance {
  /// (Output)
  /// The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final String? instance;

  /// (Output)
  /// The unique id of the secondary instance.
  final String? uid;

  InstanceCrossInstanceReplicationConfigSecondaryInstance({
    this.instance,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory InstanceCrossInstanceReplicationConfigSecondaryInstance.fromMap(
      Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigSecondaryInstance(
      instance: map['instance'] == null ? null : map['instance'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
