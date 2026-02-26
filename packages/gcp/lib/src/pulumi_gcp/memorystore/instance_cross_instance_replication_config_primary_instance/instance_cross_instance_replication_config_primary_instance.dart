// ignore_for_file: unused_element, unnecessary_cast

class InstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final String? instance;

  /// (Output)
  /// The unique id of the primary instance.
  final String? uid;

  InstanceCrossInstanceReplicationConfigPrimaryInstance({
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

  factory InstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(
      Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigPrimaryInstance(
      instance: map['instance'] == null ? null : map['instance'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
