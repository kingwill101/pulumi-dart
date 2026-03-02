// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for a registry image.
class ImageDescriptorResponse {
  /// The sha256-based digest of the image manifest.
  final pulumi.Input<String>? digest;
  /// The registry login server.
  final pulumi.Input<String>? registry;
  /// The repository name.
  final pulumi.Input<String>? repository;
  /// The tag name.
  final pulumi.Input<String>? tag;

  /// Creates a new [ImageDescriptorResponse].
  /// [digest] The sha256-based digest of the image manifest.
  /// [registry] The registry login server.
  /// [repository] The repository name.
  /// [tag] The tag name.
  ImageDescriptorResponse({
    this.digest,
    this.registry,
    this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'registry': ?registry,
      'repository': ?repository,
      'tag': ?tag,
    };
  }

  factory ImageDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return ImageDescriptorResponse(
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      registry: map['registry'] == null ? null : (map['registry']! as String).input(),
      repository: map['repository'] == null ? null : (map['repository']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

