// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final String instance;

  /// The unique id of the primary instance.
  final String uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] The unique id of the primary instance.
  GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['uid'] = uid;
    return map;
  }

  factory GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance(
      instance: map['instance'] as String,
      uid: map['uid'] as String,
    );
  }
}
