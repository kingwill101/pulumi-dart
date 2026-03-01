// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the resource.
  final String id;
  /// The first ID of the resource.
  final String instanceId;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetInstancesInstance].
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the resource.
  /// [instanceId] The first ID of the resource.
  /// [status] The status of the resource.
  GetInstancesInstance({
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      status: map['status'] as String,
    );
  }
}

