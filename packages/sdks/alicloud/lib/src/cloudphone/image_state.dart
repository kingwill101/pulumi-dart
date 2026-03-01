// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The image name.
  final pulumi.Input<String>? imageName;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// The status of the mirror.
  final pulumi.Input<String>? status;

  /// Creates a new [ImageState].
  /// [imageName] The image name.
  /// [instanceId] The instance ID.
  /// [status] The status of the mirror.
  ImageState({
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

