// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_repository_credential.dart';

/// IoT edge agent details is optional, this will be used for download system Agent module while bootstrapping IoT Role if specified.
class IoTEdgeAgentInfo {
  /// Name of the IoT edge agent image.
  final pulumi.Input<String> imageName;
  /// Image repository details.
  final pulumi.Input<ImageRepositoryCredential>? imageRepository;
  /// Image Tag.
  final pulumi.Input<String> tag;

  /// Creates a new [IoTEdgeAgentInfo].
  /// [imageName] Name of the IoT edge agent image.
  /// [imageRepository] Image repository details.
  /// [tag] Image Tag.
  IoTEdgeAgentInfo({
    required this.imageName,
    this.imageRepository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imageRepository': ?pulumi.Input.mapOptionalInputValue<ImageRepositoryCredential, Map<String, dynamic>>(imageRepository, (value) => value.toMap()),
      'tag': tag,
    };
  }

  factory IoTEdgeAgentInfo.fromMap(Map<String, dynamic> map) {
    return IoTEdgeAgentInfo(
      imageName: (map['imageName'] as String).input(),
      imageRepository: map['imageRepository'] == null ? null : (ImageRepositoryCredential.fromMap((map['imageRepository'] as Map).cast<String, dynamic>())).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

