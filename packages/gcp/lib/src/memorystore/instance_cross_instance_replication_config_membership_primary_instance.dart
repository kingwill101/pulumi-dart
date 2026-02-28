// ignore_for_file: unused_element, unnecessary_cast

class InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final String? instance;

  /// (Output)
  /// The unique id of the primary instance.
  final String? uid;

  /// Creates a new [InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  /// [uid] (Output)
  InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance({
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

  factory InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance.fromMap(
      Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigMembershipPrimaryInstance(
      instance: map['instance'] == null ? null : map['instance'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
