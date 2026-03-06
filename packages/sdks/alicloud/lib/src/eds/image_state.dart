// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The description of the image.
  final pulumi.Input<String>? description;
  /// The desktop id of the desktop.
  final pulumi.Input<String>? desktopId;
  /// The name of the image.
  final pulumi.Input<String>? imageName;
  /// The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  final pulumi.Input<String>? status;

  /// Creates a new [ImageState].
  /// [description] The description of the image.
  /// [desktopId] The desktop id of the desktop.
  /// [imageName] The name of the image.
  /// [status] The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  const ImageState({
    this.description,
    this.desktopId,
    this.imageName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desktopId': ?desktopId,
      'imageName': ?imageName,
      'status': ?status,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desktopId: (() { final guardedValue = map['desktopId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

