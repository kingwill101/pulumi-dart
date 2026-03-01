// ignore_for_file: unused_element, unnecessary_cast


class GetSharedTargetsTarget {
  /// The ID of the Shared Target.
  final String id;
  /// The resource share ID of resource manager.
  final String resourceShareId;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final String status;
  /// The ID of the Shared Target.
  final String targetId;

  /// Creates a new [GetSharedTargetsTarget].
  /// [id] The ID of the Shared Target.
  /// [resourceShareId] The resource share ID of resource manager.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  /// [targetId] The ID of the Shared Target.
  GetSharedTargetsTarget({
    required this.id,
    required this.resourceShareId,
    required this.status,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceShareId': resourceShareId,
      'status': status,
      'targetId': targetId,
    };
  }

  factory GetSharedTargetsTarget.fromMap(Map<String, dynamic> map) {
    return GetSharedTargetsTarget(
      id: map['id'] as String,
      resourceShareId: map['resourceShareId'] as String,
      status: map['status'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

