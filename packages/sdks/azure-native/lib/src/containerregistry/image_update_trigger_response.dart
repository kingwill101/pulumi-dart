// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_descriptor_response.dart';

/// The image update trigger that caused a build.
class ImageUpdateTriggerResponse {
  /// The unique ID of the trigger.
  final pulumi.Input<String?>? id;
  /// The list of image updates that caused the build.
  final pulumi.Input<List<ImageDescriptorResponse>?>? images;
  /// The timestamp when the image update happened.
  final pulumi.Input<String?>? timestamp;

  /// Creates a new [ImageUpdateTriggerResponse].
  /// [id] The unique ID of the trigger.
  /// [images] The list of image updates that caused the build.
  /// [timestamp] The timestamp when the image update happened.
  const ImageUpdateTriggerResponse({
    this.id,
    this.images,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'images': ?pulumi.Input.mapOptionalInputValue<List<ImageDescriptorResponse>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ImageDescriptorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timestamp': ?timestamp,
    };
  }

  factory ImageUpdateTriggerResponse.fromMap(Map<String, dynamic> map) {
    return ImageUpdateTriggerResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageDescriptorResponse>(guardedValue, (value) => ImageDescriptorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
