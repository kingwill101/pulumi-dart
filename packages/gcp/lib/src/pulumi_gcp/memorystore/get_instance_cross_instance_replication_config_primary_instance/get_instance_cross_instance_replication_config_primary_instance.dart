// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final String instance;

  /// The unique id of the primary instance.
  final String uid;

  GetInstanceCrossInstanceReplicationConfigPrimaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['uid'] = uid;
    return map;
  }

  factory GetInstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigPrimaryInstance(
      instance: map['instance'] as String,
      uid: map['uid'] as String,
    );
  }
}
