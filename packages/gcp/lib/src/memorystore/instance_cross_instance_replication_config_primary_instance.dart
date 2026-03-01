// ignore_for_file: unused_element, unnecessary_cast

class InstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final String? instance;

  /// (Output)
  /// The unique id of the primary instance.
  final String? uid;

  /// Creates a new [InstanceCrossInstanceReplicationConfigPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  /// [uid] (Output)
  InstanceCrossInstanceReplicationConfigPrimaryInstance({
    this.instance,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instance': ?instance, 'uid': ?uid};
  }

  factory InstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceCrossInstanceReplicationConfigPrimaryInstance(
      instance: map['instance'] == null ? null : map['instance'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
