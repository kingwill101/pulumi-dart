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
  const ImageDescriptorResponse({
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
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
