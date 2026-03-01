// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance {
  /// The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final String instance;

  /// The unique id of the secondary instance.
  final String uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance].
  /// [instance] The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] The unique id of the secondary instance.
  GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instance': instance, 'uid': uid};
  }

  factory GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance(
      instance: map['instance'] as String,
      uid: map['uid'] as String,
    );
  }
}
