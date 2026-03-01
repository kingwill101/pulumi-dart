// ignore_for_file: unused_element, unnecessary_cast

import 'image_repository_credential_response.dart';

/// IoT edge agent details is optional, this will be used for download system Agent module while bootstrapping IoT Role if specified.
class IoTEdgeAgentInfoResponse {
  /// Name of the IoT edge agent image.
  final String imageName;
  /// Image repository details.
  final ImageRepositoryCredentialResponse? imageRepository;
  /// Image Tag.
  final String tag;

  /// Creates a new [IoTEdgeAgentInfoResponse].
  /// [imageName] Name of the IoT edge agent image.
  /// [imageRepository] Image repository details.
  /// [tag] Image Tag.
  IoTEdgeAgentInfoResponse({
    required this.imageName,
    this.imageRepository,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'imageRepository': ?imageRepository == null ? null : imageRepository!.toMap(),
      'tag': tag,
    };
  }

  factory IoTEdgeAgentInfoResponse.fromMap(Map<String, dynamic> map) {
    return IoTEdgeAgentInfoResponse(
      imageName: map['imageName'] as String,
      imageRepository: map['imageRepository'] == null ? null : ImageRepositoryCredentialResponse.fromMap((map['imageRepository'] as Map).cast<String, dynamic>()),
      tag: map['tag'] as String,
    );
  }
}

