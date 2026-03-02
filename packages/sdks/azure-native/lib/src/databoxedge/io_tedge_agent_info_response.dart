// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_repository_credential_response.dart';

/// IoT edge agent details is optional, this will be used for download system Agent module while bootstrapping IoT Role if specified.
class IoTEdgeAgentInfoResponse {
  /// Name of the IoT edge agent image.
  final pulumi.Input<String> imageName;
  /// Image repository details.
  final pulumi.Input<ImageRepositoryCredentialResponse>? imageRepository;
  /// Image Tag.
  final pulumi.Input<String> tag;

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
      'imageRepository': ?pulumi.Input.mapOptionalInputValue<ImageRepositoryCredentialResponse, Map<String, dynamic>>(imageRepository, (value) => value.toMap()),
      'tag': tag,
    };
  }

  factory IoTEdgeAgentInfoResponse.fromMap(Map<String, dynamic> map) {
    return IoTEdgeAgentInfoResponse(
      imageName: (map['imageName'] as String).input(),
      imageRepository: map['imageRepository'] == null ? null : (ImageRepositoryCredentialResponse.fromMap((map['imageRepository'] as Map).cast<String, dynamic>())).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

