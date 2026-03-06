// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedTargetsTarget {
  /// The ID of the Shared Target.
  final pulumi.Input<String> id;
  /// The resource share ID of resource manager.
  final pulumi.Input<String> resourceShareId;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final pulumi.Input<String> status;
  /// The ID of the Shared Target.
  final pulumi.Input<String> targetId;

  /// Creates a new [GetSharedTargetsTarget].
  /// [id] The ID of the Shared Target.
  /// [resourceShareId] The resource share ID of resource manager.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  /// [targetId] The ID of the Shared Target.
  const GetSharedTargetsTarget({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceShareId: pulumi.Input.fromValue(map['resourceShareId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

