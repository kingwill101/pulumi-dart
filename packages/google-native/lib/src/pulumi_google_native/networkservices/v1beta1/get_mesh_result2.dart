// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getMesh.
class GetMeshResult2 {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;

  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  final int interceptionPort;

  /// Optional. Set of label tags associated with the Mesh resource.
  final Map<String, String> labels;

  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  final String name;

  /// Server-defined URL of this resource
  final String selfLink;

  /// The timestamp when the resource was updated.
  final String updateTime;

  GetMeshResult2({
    required this.createTime,
    required this.description,
    required this.interceptionPort,
    required this.labels,
    required this.name,
    required this.selfLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['interceptionPort'] = interceptionPort;
    map['labels'] = labels;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetMeshResult2.fromMap(Map<String, dynamic> map) {
    return GetMeshResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      interceptionPort: map['interceptionPort'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
