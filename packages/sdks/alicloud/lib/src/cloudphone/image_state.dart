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
  ImageState({this.imageName, this.instanceId, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
