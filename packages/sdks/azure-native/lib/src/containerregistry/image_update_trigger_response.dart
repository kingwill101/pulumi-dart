// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_descriptor_response.dart';

/// The image update trigger that caused a build.
class ImageUpdateTriggerResponse {
  /// The unique ID of the trigger.
  final String? id;
  /// The list of image updates that caused the build.
  final List<ImageDescriptorResponse>? images;
  /// The timestamp when the image update happened.
  final String? timestamp;

  /// Creates a new [ImageUpdateTriggerResponse].
  /// [id] The unique ID of the trigger.
  /// [images] The list of image updates that caused the build.
  /// [timestamp] The timestamp when the image update happened.
  ImageUpdateTriggerResponse({
    this.id,
    this.images,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'images': ?images == null ? null : pulumi.Input.encodeList<ImageDescriptorResponse, Map<String, dynamic>>(images!, (value) => value.toMap()),
      'timestamp': ?timestamp,
    };
  }

  factory ImageUpdateTriggerResponse.fromMap(Map<String, dynamic> map) {
    return ImageUpdateTriggerResponse(
      id: map['id'] == null ? null : map['id'] as String,
      images: map['images'] == null ? null : pulumi.Input.decodeList<ImageDescriptorResponse>(map['images'], (value) => ImageDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

