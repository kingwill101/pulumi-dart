// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomImage resources.
class CustomImageState {
  /// The name of the resource. The name must be `2` to `128` characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-).
  final pulumi.Input<String>? customImageName;
  /// The description of the Custom Image.
  final pulumi.Input<String>? description;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The Shared status of the Custom Image. Valid values: `Share`, `UnShare`.
  ///
  /// **NOTE:** The `status` will be automatically change to `UnShare` when the resource is deleted, please operate with caution.
  final pulumi.Input<String>? status;
  /// The ID of the system snapshot.
  final pulumi.Input<String>? systemSnapshotId;

  /// Creates a new [CustomImageState].
  /// [customImageName] The name of the resource. The name must be `2` to `128` characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-).
  /// [description] The description of the Custom Image.
  /// [instanceId] The ID of the instance.
  /// [status] The Shared status of the Custom Image. Valid values: `Share`, `UnShare`.
  /// [systemSnapshotId] The ID of the system snapshot.
  CustomImageState({
    this.customImageName,
    this.description,
    this.instanceId,
    this.status,
    this.systemSnapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageName': ?customImageName,
      'description': ?description,
      'instanceId': ?instanceId,
      'status': ?status,
      'systemSnapshotId': ?systemSnapshotId,
    };
  }

  factory CustomImageState.fromMap(Map<String, dynamic> map) {
    return CustomImageState(
      customImageName: map['customImageName'] == null ? null : (map['customImageName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      systemSnapshotId: map['systemSnapshotId'] == null ? null : (map['systemSnapshotId']! as String).input(),
    );
  }
}

