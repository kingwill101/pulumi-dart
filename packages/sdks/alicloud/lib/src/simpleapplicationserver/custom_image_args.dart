// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_custom_image_custom_image_args_doc}
/// The set of arguments for CustomImage.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_custom_image_custom_image_args_doc}
class CustomImageArgs {
  /// The name of the resource. The name must be `2` to `128` characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-).
  final pulumi.Input<String> customImageName;
  /// The description of the Custom Image.
  final pulumi.Input<String>? description;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The Shared status of the Custom Image. Valid values: `Share`, `UnShare`.
  ///
  /// **NOTE:** The `status` will be automatically change to `UnShare` when the resource is deleted, please operate with caution.
  final pulumi.Input<String>? status;
  /// The ID of the system snapshot.
  final pulumi.Input<String> systemSnapshotId;

  /// Creates a new [CustomImageArgs].
  /// [customImageName] The name of the resource. The name must be `2` to `128` characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-).
  /// [description] The description of the Custom Image.
  /// [instanceId] The ID of the instance.
  /// [status] The Shared status of the Custom Image. Valid values: `Share`, `UnShare`.
  /// [systemSnapshotId] The ID of the system snapshot.
  CustomImageArgs({
    required pulumi.Output<String> customImageName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? status,
    required pulumi.Output<String> systemSnapshotId,
  }) :
      customImageName = pulumi.Input.asInput<String>(customImageName),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemSnapshotId = pulumi.Input.asInput<String>(systemSnapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageName': customImageName,
      'description': ?description,
      'instanceId': instanceId,
      'status': ?status,
      'systemSnapshotId': systemSnapshotId,
    };
  }

  factory CustomImageArgs.fromMap(Map<String, dynamic> map) {
    return CustomImageArgs(
      customImageName: pulumi.Output.create<String>(map['customImageName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      systemSnapshotId: pulumi.Output.create<String>(map['systemSnapshotId'] as String),
    );
  }
}

