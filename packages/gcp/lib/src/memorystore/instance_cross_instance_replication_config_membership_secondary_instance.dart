// ignore_for_file: unused_element, unnecessary_cast


class InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance {
  /// The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final String? instance;
  /// Output only. System assigned, unique identifier for the instance.
  final String? uid;

  /// Creates a new [InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance].
  /// [instance] The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] Output only. System assigned, unique identifier for the instance.
  InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance({
    this.instance,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'uid': ?uid,
    };
  }

  factory InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap(Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance(
      instance: map['instance'] == null ? null : map['instance'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

